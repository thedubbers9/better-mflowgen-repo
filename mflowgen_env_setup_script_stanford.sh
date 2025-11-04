## see if .mflowgen_setup_done file exists
if [ ! -f ".mflowgen_setup_done" ]; then
    ## run the setup script
    source initial_setup.sh stanford
fi

module load base innovus genus
##### miniconda setup #####
export PATH="$(pwd)/miniconda3/bin:$PATH"

source miniconda3/etc/profile.d/conda.sh
conda activate mflowgen_env


chmod u+x ./mflowgen/mflowgen/scripts/*
