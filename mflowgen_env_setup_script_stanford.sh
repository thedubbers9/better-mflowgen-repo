module load base innovus genus
##### miniconda setup #####
export PATH="$(pwd)/miniconda3/bin:$PATH"

source miniconda3/etc/profile.d/conda.sh
conda activate mflowgen_env


chmod u+x ./mflowgen/mflowgen/scripts/*
