#!/usr/bin/env python

import sys

import subprocess

import os

import yaml

import re

import os

from datetime import datetime
import argparse
import time

USR_HOME_DIR = '~'

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
        result = subprocess.run(command, shell=True, check=True, universal_newlines=True)

    except subprocess.CalledProcessError as e:
        # Print or handle the error if the command fails
        print("Error:", e.stderr)
        return None

def fix_antenna_cell_issue():
    """Comments out ADK_ANTENNA_CELL reference in setup.tcl if not already fixed."""
    setup_tcl_path = "./mflowgen/steps/cadence-innovus-flowsetup/setup.tcl"
    
    if not os.path.exists(setup_tcl_path):
        print(f"Warning: {setup_tcl_path} not found, skipping antenna cell fix")
        return
    
    # Read the file
    with open(setup_tcl_path, 'r') as f:
        lines = f.readlines()
    
    # Check if already fixed
    modified = False
    for i, line in enumerate(lines):
        # Look for the problematic line and comment it out if not already commented
        if 'ADK_ANTENNA_CELL' in line and not line.strip().startswith('#'):
            lines[i] = '# ' + line  # Comment out the line
            modified = True
            print(f"Commented out line {i+1} in setup.tcl: {line.strip()}")
    
    # Write back if modified
    if modified:
        with open(setup_tcl_path, 'w') as f:
            f.writelines(lines)
        print("Fixed ADK_ANTENNA_CELL issue in setup.tcl")
    else:
        print("ADK_ANTENNA_CELL already fixed or not present in setup.tcl")



def fix_gds_layer_map(pdk_name):
    """Ensures the GDS layer map file has the expected name."""
    if pdk_name == "asap7":
        adk_path = "./mflowgen/adks/asap7/view-standard/"
        source_file = adk_path + "rtk-stream-out-130.map"
        target_file = adk_path + "rtk-stream-out.map"
        
        if os.path.exists(source_file) and not os.path.exists(target_file):
            import shutil
            shutil.copy(source_file, target_file)
            print(f"Copied {source_file} to {target_file}")
        elif os.path.exists(target_file):
            print("GDS layer map file already exists")
        else:
            print(f"Warning: Could not find {source_file}")

def fix_checkpoint_race_condition():
    """Fixes checkpoint file timestamp race condition by disabling file modification check."""
    # Find all restore-design.tcl files that might be used
    restore_files = [
        "./mflowgen/steps/cadence-innovus-power/innovus-foundation-flow/custom-scripts/restore-design.tcl",
        "./mflowgen/steps/cadence-innovus-place/innovus-foundation-flow/custom-scripts/restore-design.tcl",
        "./mflowgen/steps/cadence-innovus-cts/innovus-foundation-flow/custom-scripts/restore-design.tcl",
        "./mflowgen/steps/cadence-innovus-postcts_hold/innovus-foundation-flow/custom-scripts/restore-design.tcl",
        "./mflowgen/steps/cadence-innovus-route/innovus-foundation-flow/custom-scripts/restore-design.tcl",
        "./mflowgen/steps/cadence-innovus-postroute/innovus-foundation-flow/custom-scripts/restore-design.tcl",
        "./mflowgen/steps/cadence-innovus-postroute_hold/innovus-foundation-flow/custom-scripts/restore-design.tcl",
        "./mflowgen/steps/cadence-innovus-signoff/innovus-foundation-flow/custom-scripts/restore-design.tcl",
    ]
    
    for restore_file in restore_files:
        if not os.path.exists(restore_file):
            continue
            
        with open(restore_file, 'r') as f:
            content = f.read()
        
        # Check if already fixed
        if 'set restore_db_file_check 0' in content:
            continue
        
        # Add the fix at the beginning of the file (after any shebang/header comments)
        lines = content.split('\n')
        insert_pos = 0
        
        # Skip initial comments
        for i, line in enumerate(lines):
            if line.strip() and not line.strip().startswith('#'):
                insert_pos = i
                break
        
        # Insert the fix
        lines.insert(insert_pos, '# Disable checkpoint file modification check to avoid NFS race conditions')
        lines.insert(insert_pos + 1, 'set restore_db_file_check 0')
        lines.insert(insert_pos + 2, '')
        
        with open(restore_file, 'w') as f:
            f.write('\n'.join(lines))
        
        print(f"Fixed checkpoint race condition in {restore_file}")
    
    print("Checkpoint race condition fix applied")

def run_flow(input_file_folder, project_name, pdk_name):
    
    ## copy the verilog files into the project
    if os.path.exists("./mflowgen/designs/" + project_name +"/"):
        execute_command("rm -rf ./mflowgen/designs/" + project_name + "/")

    execute_command("cp -r ./mflowgen/designs/GcdUnit ./mflowgen/designs/" + project_name)

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
    execute_command("sed -i \"s/adk_name = 'freepdk-45nm'/adk_name = '" + pdk_name + "'/g\" ./mflowgen/designs/" + project_name + "/construct-commercial-full.py")

    ## update the clock period in the construct-commercial-full.py
    clock_period = "2000.0" # this is in ps

    if pdk_name == "skywater-130nm" or pdk_name == "freepdk-45nm":
        clock_period = "10.0" # this is in ns

    execute_command("sed -i 's/PARAM_CLOCK_PERIOD/" + clock_period + "/g' ./mflowgen/designs/" + project_name + "/construct-commercial-full.py")

    ## Fix antenna cell issue for PDKs that don't define it (e.g., ASAP7)
    fix_antenna_cell_issue()
    
    ## Fix GDS layer map naming issue for ASAP7
    fix_gds_layer_map(pdk_name)
    
    ## Fix checkpoint file race condition for NFS filesystems
    fix_checkpoint_race_condition()

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

    execute_command("mflowgen run --design ../designs/" + project_name)

    execute_command("make 13 | tee debug.out")

    if not os.path.exists("./13-cadence-innovus-route/"):
        print("Error, flow incomplete at step 13. Exiting...")
        exit(1)

    print("Step 13 (route) completed successfully!")
    
    # Run step 16 for signoff
    print("Running step 16 (signoff)...")
    execute_command("make 16 | tee -a debug.out")
    
    if not os.path.exists("./16-cadence-innovus-signoff/"):
        print("Error, flow incomplete at step 16 (signoff). Exiting...")
        exit(1)
    
    print("Step 16 (signoff) completed successfully!")

    ## copy the area & timing results to the results directory
    results_folder_name = "flow_results/" + project_name + "-" + generate_timestamp_folder_name()

    change_directory("../..")

    # Check if the results folder already exists
    if not os.path.exists("./flow_results"):
        execute_command("mkdir flow_results")


    execute_command("mkdir " + results_folder_name)
    execute_command("cp -r ./mflowgen/build/5-cadence-genus-synthesis/results_syn ./" + results_folder_name)

    change_directory("./mflowgen/build/13-cadence-innovus-route/")

    execute_command("echo 'read_db checkpoints/design.checkpoint/save.enc.dat' > get_stats.tcl")
    execute_command("echo 'report_power -hierarchy 1 > power.rpt' >> get_stats.tcl")
    execute_command("echo 'report_area > area.rpt' >> get_stats.tcl")
    execute_command("echo 'report_timing -nworst 10 > timing.rpt' >> get_stats.tcl")
    execute_command("echo 'write_netlist post_route_netlist.sv ' >> get_stats.tcl")

    execute_command("echo 'report_timing -through [get_cells iDUT] -max_paths 10 > DUT_timing.rpt' >> get_stats.tcl")

def run_flow_from_containing_directory(source_directory, pdk_name):
    ## save the relevant directory paths
    run_directory = os.getcwd()
    better_mflowgen_root = os.path.dirname(os.path.abspath(__file__))

    ## copy the design into the better-mflowgen input_designs directory
    copy_source_directory = os.path.join(run_directory, source_directory)

    # get only the last part of the source directory to use as project name
    project_name = os.path.basename(os.path.normpath(source_directory))

    destination_directory = os.path.join(better_mflowgen_root, "input_designs", project_name)

    if os.path.exists(destination_directory):
        execute_command(f"rm -rf {destination_directory}")
    execute_command(f"cp -r {copy_source_directory} {destination_directory}")

    ## change directory to better-mflowgen root
    change_directory(better_mflowgen_root)

    ## run the flow
    run_flow(os.path.join("input_designs", project_name), project_name, pdk_name)


def main(argv=None):
        """

        Options:
            
        """
        parser = argparse.ArgumentParser(description="Run mflowgen flow for a given input folder and PDK")
        parser.add_argument('-s', '--source_directory', dest='source_directory', required=True,
                                                help='Folder containing input RTL/files (relative to directory where script is run)')
        parser.add_argument('-d', '--pdk', dest='pdk_name', required=True,
                                                help='PDK name to use (e.g. asap7, skywater-130nm, freepdk-45nm)')

        args = parser.parse_args(argv)

        # Call the flow with the provided arguments
        run_flow_from_containing_directory(args.source_directory, args.pdk_name)


if __name__ == '__main__':
        main()

