#!/bin/bash

ORIG_DIR=$(pwd)
module load base innovus genus

chmod u+x ./mflowgen/mflowgen/scripts/*

export LD_LIBRARY_PATH=/usr/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH

## Fix missing dependencies for Genus on Stanford's systems
mkdir -p ~/local/lib
cd ~/local/lib

if [ ! -f "$HOME/local/lib/libXss.so.1" ]; then
    wget -q https://mirror.csclub.uwaterloo.ca/ubuntu/pool/main/libx/libxss/libxss1_1.2.3-1_amd64.deb
    ar x libxss1_1.2.3-1_amd64.deb data.tar.xz

    # Extract to a temp dir
    mkdir -p tmp_extract
    tar -xf data.tar.xz -C tmp_extract

    # Find the directory that contains libXss and copy BOTH files (symlink + target)
    XSS_DIR="$(dirname "$(find tmp_extract -name 'libXss.so.1.0.0' -o -name 'libXss.so.1' | head -n1)")"
    if [ -n "$XSS_DIR" ]; then
        # -a preserves symlinks; copy both in case .1 is a symlink to .1.0.0
        cp -a "$XSS_DIR"/libXss.so.1* "$HOME/local/lib/"
    else
        echo "ERROR: libXss.so.1 not found inside the .deb payload" >&2
        exit 1
    fi

    # Clean up
    rm -rf tmp_extract data.tar.xz libxss1_1.2.3-1_amd64.deb
fi

export LD_LIBRARY_PATH=$HOME/local/lib:$LD_LIBRARY_PATH

# Create symbolic link only if it doesn't already exist
if [ ! -L "$HOME/local/lib/libstdc++.so" ]; then
    ln -s /usr/lib64/libstdc++.so.6 "$HOME/local/lib/libstdc++.so"
fi

export LD_LIBRARY_PATH=$HOME/local/lib:/usr/lib64:$LD_LIBRARY_PATH

cd "$ORIG_DIR"