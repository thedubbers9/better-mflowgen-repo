#!/usr/bin/env python

import sys

import subprocess

import os

import yaml

import re

import os

from datetime import datetime
import argparse

USR_HOME_DIR = '/afs/ece.cmu.edu/usr/edubbers'

def generate_timestamp_folder_name():
    # Get the current date and time, then format it
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    return "AREA_POWER_DELAY_RESULTS-" + timestamp

def change_directory(path):
    try:
        os.chdir(path)
        print(f"Changed directory to: {os.getcwd()}")
    except FileNotFoundError:
        print(f"The directory '{path}' does not exist.")
    except NotADirectoryError:
        print(f"The path '{path}' is not a directory.")
    except PermissionError:
        print(f"Permission denied for accessing '{path}'.")

def edit_yaml_inputs(filename, new_inputs):
    """Edits the `inputs` list in a YAML file to have new entries."""
    # Load the YAML data
    with open(filename, 'r') as file:
        data = yaml.safe_load(file)

    # Modify the `inputs` list
    data['inputs'] = new_inputs

    # Add to the preconditions that the input files are present
    preconditions = ["assert Tool( 'genus' )"]
    for input_file in new_inputs:
        preconditions.append(f"assert File( 'inputs/{input_file}' )")

    data['preconditions'] = preconditions

    # Save the changes back to the YAML file
    with open(filename, 'w') as file:
        yaml.safe_dump(data, file)

def remove_extension_and_prefix(filename):
    """Removes the file extension from a filename."""
    remove_extension = os.path.splitext(filename)[0]
    return re.sub(r'^\d+_', '', remove_extension)

def remove_extension(filename):
    """Removes the file extension from a filename."""
    return os.path.splitext(filename)[0]


def list_files_in_directory(directory):
    """Reads all file names from the specified directory and returns them in an array."""
    return [f for f in os.listdir(directory) if os.path.isfile(os.path.join(directory, f))]


def execute_command(command):
    """Executes an arbitrary Linux command."""
    try:
        # Execute the command and capture the output
        result = subprocess.run(command, shell=True, check=True, text=True)
        
    except subprocess.CalledProcessError as e:
        # Print or handle the error if the command fails
        print("Error:", e.stderr)
        return None






def run_flow(input_file_folder, project_name, pdk_name):    
    ## copy the verilog files into the project
    if os.path.exists("./mflowgen/designs/" + project_name +"/"):
        execute_command("rm -rf ./mflowgen/designs/" + project_name + "/")

    execute_command("cp -r ./mflowgen/designs/template_hier ./mflowgen/designs/" + project_name)

    execute_command("rm -rf ./mflowgen/designs/" + project_name + "/rtl/outputs/*" )

    execute_command("cp -r ./" + input_file_folder + "/*  ./mflowgen/designs/" + project_name + "/rtl/outputs/" )

    ## update designs/<design_name>/rtl/configure.yml
    list_of_proj_files = list_files_in_directory("./" + input_file_folder)

    list_of_proj_files.sort()

    with open("./mflowgen/designs/" + project_name + "/rtl/configure.yml", 'a+') as file:
            for entry in list_of_proj_files:
                file.write("  - " + entry + "\n")

    ## update designs/<design_name>/construct-commercial-full.py
    execute_command("sed -i 's/PARAM_DESIGN_NAME_1/" + remove_extension_and_prefix(list_of_proj_files[-1]) + "/g' ./mflowgen/designs/" + project_name + "/construct-commercial-full.py")

    execute_command("sed -i 's/PARAM_DESIGN_NAME_2/" + remove_extension(list_of_proj_files[-1]) + "/g' ./mflowgen/designs/" + project_name + "/construct-commercial-full.py")

    ## update the PDK_NAME in the construct-commercial-full.py with the pdk_name param
    execute_command("sed -i 's/PARAM_PDK_NAME/" + pdk_name + "/g' ./mflowgen/designs/" + project_name + "/construct-commercial-full.py")

    ## update the clock period in the construct-commercial-full.py
    clock_period = "2000.0" # this is in ps

    if pdk_name == "skywater-130nm":
        clock_period = "10.0" # this is in ns

    execute_command("sed -i 's/PARAM_CLOCK_PERIOD/" + clock_period + "/g' ./mflowgen/designs/" + project_name + "/construct-commercial-full.py")


    ## update steps/cadence-genus-synthesis/configure.yml
    cadence_genus_input_files = list_of_proj_files.copy()

    cadence_genus_input_files.append("adk")

    cadence_genus_input_files.append("constraints.tcl")

    if not os.path.exists("./mflowgen/steps/cadence-genus-synthesis/backup-copy-configure.yml"):
        execute_command("cp ./mflowgen/steps/cadence-genus-synthesis/configure.yml ./mflowgen/steps/cadence-genus-synthesis/backup-copy-configure.yml")


    edit_yaml_inputs("./mflowgen/steps/cadence-genus-synthesis/configure.yml", cadence_genus_input_files)

    ## make the project through stage 13
    execute_command("rm -rf ./mflowgen/build/*")

    change_directory("./mflowgen/build/")

    source_command = "source " + USR_HOME_DIR + "/.bashrc;"

    activate_env_command = "conda activate mflowgen_env;"

    # execute_command("source /afs/ece.cmu.edu/usr/edubbers/.bashrc")
    # execute_command("conda activate mflowgen_env")

    execute_command(source_command + activate_env_command + "mflowgen run --design ../designs/" + project_name)

    execute_command(source_command + activate_env_command + "make 13 | tee debug.out")

    if not os.path.exists("./13-cadence-innovus-route/"):
        print("Error, flow incomplete. Exiting...")
        exit(1)

    ## copy the area & timing results to the results directory
    results_folder_name = "flow_results/" + project_name + "-" + generate_timestamp_folder_name()

    change_directory("../..")

    # Check if the results folder already exists
    if not os.path.exists("./flow_results"):
        execute_command("mkdir flow_results")


    execute_command("mkdir" + results_folder_name)
    execute_command("cp -r ./mflowgen/build/5-cadence-genus-synthesis/results_syn ./" + results_folder_name)

    change_directory("./mflowgen/build/13-cadence-innovus-route/")

    execute_command("echo 'read_db checkpoints/design.checkpoint/save.enc.dat' > get_stats.tcl")
    execute_command("echo 'report_power -hierarchy 1 > power.rpt' >> get_stats.tcl")
    execute_command("echo 'report_area > area.rpt' >> get_stats.tcl")
    execute_command("echo 'report_timing -nworst 100 > timing.rpt' >> get_stats.tcl")
    execute_command("echo 'write_netlist post_route_netlist.sv ' >> get_stats.tcl")

    execute_command("innovus -stylus -batch -file get_stats.tcl")
    change_directory("../../..")

    execute_command("cp ./mflowgen/build/13-cadence-innovus-route/power.rpt ./" + results_folder_name + "/")
    execute_command("cp ./mflowgen/build/13-cadence-innovus-route/area.rpt ./" + results_folder_name + "/")
    execute_command("cp ./mflowgen/build/13-cadence-innovus-route/timing.rpt ./" + results_folder_name + "/")
    execute_command("cp ./mflowgen/build/13-cadence-innovus-route/post_route_netlist.sv ./" + results_folder_name + "/")


    ## copy the input files to the result directory
    execute_command("cp -r ./" + input_file_folder + " ./" + results_folder_name + "/input-files/")

    ## copy the entire build directory to the results directory [NOT RECOMMENDED, uses too much space]
    #execute_command("cp -r ./mflowgen/build/ ./" + results_folder_name + "/full-build/")

    print("FLOW COMPLETE! See results folder created (" + results_folder_name + ") !")



def main():
    parser = argparse.ArgumentParser(description="Run the flow with specified input file folder, project name, and PDK name.")
    parser.add_argument('-input_file_folder', help='Relative path to the input file folder')
    parser.add_argument('-project_name', help='Name of the project')
    parser.add_argument('-pdk_name', choices=['asap7', 'skywater-130nm'], help='PDK name (asap7 or skywater-130nm)')
    parser.add_argument('-batch_run', help='Directory containing multiple designs to be synthesized')

    args = parser.parse_args()

    if args.batch_run:

        # make sure the pdk is defined
        if not args.pdk_name:
            parser.error("The following arguments are required: -pdk_name")

        batch_directory = args.batch_run
        for design_folder in os.listdir(batch_directory):
            design_path = os.path.join(batch_directory, design_folder)
            if os.path.isdir(design_path):
                print(f"Running flow for design: {design_folder}")
                run_flow(design_path, design_folder, args.pdk_name)
    else:
        input_file_folder = args.input_file_folder
        project_name = args.project_name
        pdk_name = args.pdk_name

        if not input_file_folder or not project_name or not pdk_name:
            parser.error("The following arguments are required: -input_file_folder, -project_name, -pdk_name")

        run_flow(input_file_folder, project_name, pdk_name)


if __name__ == "__main__":
    main()


