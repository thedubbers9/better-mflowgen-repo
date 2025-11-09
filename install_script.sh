#!/bin/bash
# pass in "stanford" or "cmu" as the first argument to this script

git submodule update --init --recursive

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -p "$(pwd)/miniconda3"
source miniconda3/etc/profile.d/conda.sh
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

### GCD UNIT is used as a template design for commercial flows. When a new design is created, we copy over GCD unit and edit necessary files.
# these changes here modify GCD unit to make it a template design for commercial flows.
## edit template construct-commercial-full.py:
CONSTRUCT_COMMERCIAL_FILE="$TOP/designs/GcdUnit/construct-commercial-full.py"

# 1) Change the synthesis step name
sed -i "s/'synopsys-dc-synthesis'/'cadence-genus-synthesis'/g" "$CONSTRUCT_COMMERCIAL_FILE"

# 2) Rename identifier dc -> gsyn (avoid touching hyphenated strings like synopsys-dc-synthesis)
sed -i -E "s/(^|[^[:alnum:]_\\-])dc([^[:alnum:]_\\-]|$)/\\1gsyn\\2/g" "$CONSTRUCT_COMMERCIAL_FILE"

## replace     'design_name'    : 'GcdUnit', with 'design_name'    : 'PARAM_DESIGN_NAME_1',
sed -i "s/'design_name'    : 'GcdUnit'/'design_name'    : 'PARAM_DESIGN_NAME_1'/g" "$CONSTRUCT_COMMERCIAL_FILE"

## replace 'clock_period'   : 2.0, with 'clock_period'   : PARAM_CLOCK_PERIOD,
sed -i "s/'clock_period'   : 2.0/'clock_period'   : PARAM_CLOCK_PERIOD/g" "$CONSTRUCT_COMMERCIAL_FILE"


## replace  g.connect( rtl.o('design.v'), verif_post_synth.i('design.ref.v') ) with  g.connect( rtl.o('PARAM_DESIGN_NAME_2.sv'), verif_post_synth.i('design.ref.v') )
sed -i "s/g.connect( rtl.o('design.v'), verif_post_synth.i('design.ref.v') )/g.connect( rtl.o('PARAM_DESIGN_NAME_2.sv'), verif_post_synth.i('design.ref.v') )/g" "$CONSTRUCT_COMMERCIAL_FILE"

cd ..

## write a file .mflowgen_setup_done to indicate setup is done
touch .mflowgen_setup_done

conda deactivate

