After the first time: 

source mflowgen_env_setup_script_<school>.sh

First Time setup:
run the initial_setup.sh <school> where school is cmu or stanford. 

To run BETTER_mflowgen on a design:

1. Create a folder with the same name as the top level design (E.g. ADD_16_flopped) in the input_designs folder. 
2. Add SV files to this folder. For all N files in the design you wish to input to the flow, the filename must be #_{module_name} where # is an integer from 1 to N. E.g. 2_SUB_16b.sv.
	The number sets the compile order. File N should be the top level module. For any file numbered x, the module contained in file number x only references
	modules defined in files with a number less than x. 
3. Go back to the top level of the repository. 
4. conda activate mflowgen_env
5. python3 automated_run.py -h ## to see the options
6. Run as desired. The results will be placed in the flow_results folder. 


Debugging help: 

Steps for opening innovus GUI:
Go into the 13-cadence-innovus-route directory
Run innovus -stylus
In the innovus prompt, type read_db checkpoints/design.checkpoint/save.enc.dat
To report power, in innovus prompt, type report_power > power.rpt

