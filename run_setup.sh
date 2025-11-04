#!/bin/bash

################## PARSE UNIVERSITY ARGUMENT ##################

host=$(hostname)

if [[ "$host" == *stanford* ]]; then
    export UNIVERSITY="stanford"
elif [[ "$host" == *cmu* ]]; then
    export UNIVERSITY="cmu"
else
    echo "Hostname is '$host' — does not contain 'stanford' or 'cmu'."
    read -p "Please pick your university (stanford/cmu): " choice
    case "$choice" in
        stanford|Stanford|STANFORD)
            export UNIVERSITY="stanford"
            ;;
        cmu|CMU|Cmu)
            export UNIVERSITY="cmu"
            ;;
        *)
            echo "Invalid choice. Exiting."
            exit 1
            ;;
    esac
fi


echo "UNIVERSITY set to: $UNIVERSITY"

################## SOURCE APPROPRIATE ENVIRONMENT SETUP SCRIPT ##################

if [ "$UNIVERSITY" == "stanford" ]; then
    source mflowgen_env_setup_script_stanford.sh
elif [ "$UNIVERSITY" == "cmu" ]; then
    source mflowgen_env_setup_script_cmu.sh
else
    echo "UNIVERSITY variable is not set correctly. Exiting."
    exit 1
fi

################## RUN INSTALL SCRIPT IF NEEDED ################

if [ ! -f ".mflowgen_setup_done" ]; then
    ## run the setup script
    source install_script.sh "$UNIVERSITY"
fi

##### miniconda setup #####
export PATH="$(pwd)/miniconda3/bin:$PATH"

source miniconda3/etc/profile.d/conda.sh
conda activate mflowgen_env

echo "Setup complete. You may now use mflowgen."