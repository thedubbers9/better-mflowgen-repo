#!/bin/bash
# pass in "stanford" or "cmu" as the first argument to this script

git submodule update --init --recursive

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -p "$(pwd)/miniconda3"
source mflowgen_env_setup_script_$1.sh
conda create --name mflowgen_env python=3.8 ipython

source "$(pwd)/miniconda3/bin/activate" mflowgen_env
conda install pyyaml
if [ "$1" == "stanford" ]; then
    conda install -c conda-forge libxss
fi
cd mflowgen
TOP=${PWD}
pip install -e .

wget https://cmu.box.com/shared/static/quxh46s78snaslb6yul8wcgmztdvigxn -O asap7.tar.gz

mkdir -p $TOP/adks/asap7/
tar -xvf asap7.tar.gz -C $TOP/adks/asap7/

mkdir -p $TOP/build/

## edit template construct-commercial-full.py:
CONSTRUCT_COMMERCIAL_FILE="$TOP/designs/GcdUnit/construct-commercial-full.py"

# Replace the Step(...) line
sed -i "s|.*Step(.*cadence-genus-synthesis.*)|gsyn = Step( 'cadence-genus-synthesis',          default=True )|" "$CONSTRUCT_COMMERCIAL_FILE"

# Replace all "dc" with "gsyn"
sed -i "s/dc/gsyn/g" "$CONSTRUCT_COMMERCIAL_FILE"


cd ..

