After the first time: 

source mflowgen_env_setup_script.sh

First Time setup:

1. Install miniconda
	cd into BETTER_mflowgen
	wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
	bash Miniconda3-latest-Linux-x86_64.sh -b -p "$(pwd)/miniconda3"


2. source mflowgen_env_setup_script.sh
3. conda create --name mflowgen_env python=3.8 ipython
4. cd into mflowgen folder
5. TOP=${PWD}
6. pip install -e .

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

