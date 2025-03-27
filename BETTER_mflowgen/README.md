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
