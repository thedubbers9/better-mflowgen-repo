#!/bin/bash
# Cadence Genus - synthesis
export GENUS_DIR=/afs/ece.cmu.edu/support/cds/share/image/usr/cds/genus-18.14.000/tools.lnx86
# Cadence Conformal - logic equivalence checker
export LEC_DIR=/afs/ece.cmu.edu/support/cds/share/image/usr/cds/confrml-18.10.300/tools.lnx86
# Cadence Xcelium - gate-level simulation
export SIM_DIR=/afs/ece.cmu.edu/support/cds/share/image/usr/cds/xcelium-19.03.010/tools.lnx86
# Cadence Innovus - place and route
export INNOV_DIR=/afs/ece.cmu.edu/support/cds/share/image/usr/cds/innovus-19.10.000/tools.lnx86
#export INNOV_DIR=/afs/ece.cmu.edu/support/cds/share/image/usr/cds/innovus-18.14.000/tools.lnx86
# Cadence Quantus - layout parasitic extraction
export QRC_DIR=/afs/ece.cmu.edu/support/cds/share/image/usr/cds/ext-17.10.000/tools.lnx86
# Cadence Voltus and Tempus - power and timing signoff
export VOLTUS_TEMPUS_DIR=/afs/ece.cmu.edu/support/cds/share/image/usr/cds/ssv-19.12.000/tools.lnx86
# Cadence Virtuoso - schematic and layout editor
#export CDSHOME=/afs/ece/support/cds/share/image/usr/cds/ic-6.17.710
export CDSHOME=/afs/ece/support/cds/share/image/usr/cds/ic-6.16.090
# Cadence Spectre - SPICE simulation
#export MMSIM=/afs/ece.cmu.edu/support/cds/share/image/usr/cds/mmsim-10.11.279
export MMSIM=/usr/cds/mmsim-14.10.527
# Mentor Calibre - layout versus schematic (LVS) and design rule checker (DRC)
export MGC_HOME=/afs/ece/support/mgc/mgc.release/ARCHIVE/cal_2018.2_33.24/aoi_cal_2018.2_33.24
# Cadence PVS - layout versus schematic (LVS) and design rule checker (DRC)
export PVS_DIR=/afs/ece/support/cds/share/image/usr/cds/pvs-16.15.000
export PATH=${GENUS_DIR}/bin:${LEC_DIR}/bin:${SIM_DIR}/bin:${INNOV_DIR}/bin:${QRC_DIR}/bin:${VOLTUS_TEMPUS_DIR}/bin:${CDSHOME}/tools/bin:${CDSHOME}/tools/dfII/bin:${MMSIM}/tools/bin:${MMSIM}/tools/dfII/bin:${MGC_HOME}/bin:${PVS_DIR}/bin:${PATH}
# Assura setup
export ASSURAHOME=/usr/cds/assura-4.15.001-616
#export ASSURAHOME=/usr/cds/assura-4.12-014
export PATH=${PATH}:${ASSURAHOME}/tools/assura/bin
#export OA_HOME=`/bin/ls -d1 $CDSHOME/oa_v*`
export OA_UNSUPPORTED_PLAT=linux_rhel50_gcc44x
# License files
# Cadence
if [ -z $LM_LICENSE_FILE ]; then
    #export LM_LICENSE_FILE=/afs/ece/support/cds/share/image/usr/cds/soc/license.dat
    export LM_LICENSE_FILE=/usr/cds/share/license.dat
else
    #export LM_LICENSE_FILE=$LM_LICENSE_FILE:/afs/ece/support/cds/share/image/usr/cds/soc/license.dat
    export LM_LICENSE_FILE=$LM_LICENSE_FILE:/usr/cds/share/license.dat
fi
# Mentor
if [ -z $LM_LICENSE_FILE ]; then
    export LM_LICENSE_FILE=/afs/ece/support/mgc/license.dat
else 
    export LM_LICENSE_FILE=$LM_LICENSE_FILE:/afs/ece/support/mgc/license.dat
fi
# Environment variables
export CDS_LIC_FILE=5280@cadence-lic.ece.cmu.edu
export CDS_AUTO_64BIT=ALL
export CDS_Netlisting_Mode=Analog
export ECE725_CLASS=/afs/ece/class/ece725
