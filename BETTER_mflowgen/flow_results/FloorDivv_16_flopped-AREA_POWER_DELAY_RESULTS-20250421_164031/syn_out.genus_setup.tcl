#####################################################################
#
# Genus(TM) Synthesis Solution setup file
# Created by Genus(TM) Synthesis Solution 18.14-s037_1
#   on 04/21/2025 16:21:03
#
#
#####################################################################


# This script is intended for use with Genus(TM) Synthesis Solution version 18.14-s037_1


# Remove Existing Design
###########################################################
if {[::legacy::find -design /designs/FloorDiv_16_flopped] ne ""} {
  puts "** A design with the same name is already loaded. It will be removed. **"
  delete_obj /designs/FloorDiv_16_flopped
}


# To allow user-readonly attributes
########################################################
::legacy::set_attribute -quiet force_tui_is_remote 1 /


# Libraries
###########################################################
::legacy::set_attribute library {/afs/ece.cmu.edu/usr/dchinmay/Srimani_Lab/codesign/eric-codesign-aux/BETTER_mflowgen/mflowgen/build/5-cadence-genus-synthesis/inputs/adk/stdcells.lib} /

::legacy::set_attribute lef_library {/afs/ece.cmu.edu/usr/dchinmay/Srimani_Lab/codesign/eric-codesign-aux/BETTER_mflowgen/mflowgen/build/5-cadence-genus-synthesis/inputs/adk/rtk-tech.lef /afs/ece.cmu.edu/usr/dchinmay/Srimani_Lab/codesign/eric-codesign-aux/BETTER_mflowgen/mflowgen/build/5-cadence-genus-synthesis/inputs/adk/stdcells.lef /afs/ece.cmu.edu/usr/dchinmay/Srimani_Lab/codesign/eric-codesign-aux/BETTER_mflowgen/mflowgen/build/5-cadence-genus-synthesis/inputs/adk/rtk-tech.lef /afs/ece.cmu.edu/usr/dchinmay/Srimani_Lab/codesign/eric-codesign-aux/BETTER_mflowgen/mflowgen/build/5-cadence-genus-synthesis/inputs/adk/stdcells.lef} /
::legacy::set_attribute cap_table_file /afs/ece.cmu.edu/usr/dchinmay/Srimani_Lab/codesign/eric-codesign-aux/BETTER_mflowgen/mflowgen/build/5-cadence-genus-synthesis/inputs/adk/rtk-typical.captable /


# Design
###########################################################
read_netlist -top FloorDiv_16_flopped results_syn/syn_out.v
read_metric -id current results_syn/syn_out.metrics.json

source results_syn/syn_out.g
puts "\n** Restoration Completed **\n"


# Data Integrity Check
###########################################################
# program version
if {"[string_representation [::legacy::get_attribute program_version /]]" != "18.14-s037_1"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-91] "golden program_version: 18.14-s037_1  current program_version: [string_representation [::legacy::get_attribute program_version /]]"
}
# license
if {"[string_representation [::legacy::get_attribute startup_license /]]" != "Genus_Synthesis"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-91] "golden license: Genus_Synthesis  current license: [string_representation [::legacy::get_attribute startup_license /]]"
}
# slack
set _slk_ [::legacy::get_attribute slack /designs/FloorDiv_16_flopped]
if {[regexp {^-?[0-9.]+$} $_slk_]} {
  set _slk_ [format %.1f $_slk_]
}
if {$_slk_ != "0.3"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden slack: 0.3,  current slack: $_slk_"
}
unset _slk_
# multi-mode slack
# tns
set _tns_ [::legacy::get_attribute tns /designs/FloorDiv_16_flopped]
if {[regexp {^-?[0-9.]+$} $_tns_]} {
  set _tns_ [format %.0f $_tns_]
}
if {$_tns_ != "0"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden tns: 0,  current tns: $_tns_"
}
unset _tns_
# cell area
set _cell_area_ [::legacy::get_attribute cell_area /designs/FloorDiv_16_flopped]
if {[regexp {^-?[0-9.]+$} $_cell_area_]} {
  set _cell_area_ [format %.0f $_cell_area_]
}
if {$_cell_area_ != "2841"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden cell area: 2841,  current cell area: $_cell_area_"
}
unset _cell_area_
# net area
set _net_area_ [::legacy::get_attribute net_area /designs/FloorDiv_16_flopped]
if {[regexp {^-?[0-9.]+$} $_net_area_]} {
  set _net_area_ [format %.0f $_net_area_]
}
if {$_net_area_ != "1756"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden net area: 1756,  current net area: $_net_area_"
}
unset _net_area_
