create_library_set -name default_library_set -timing /afs/ece.cmu.edu/usr/dchinmay/Srimani_Lab/codesign/eric-codesign-aux/BETTER_mflowgen/mflowgen/build/5-cadence-genus-synthesis/inputs/adk/stdcells.lib
create_rc_corner -name _default_rc_corner_ -T 25.0
update_rc_corner -name _default_rc_corner_ -cap_table /afs/ece.cmu.edu/usr/dchinmay/Srimani_Lab/codesign/eric-codesign-aux/BETTER_mflowgen/mflowgen/build/5-cadence-genus-synthesis/inputs/adk/rtk-typical.captable
create_delay_corner -name _default_delay_corner_ -library_set default_library_set -opcond typical  -opcond_library NangateOpenCellLibrary -rc_corner _default_rc_corner_

create_constraint_mode -name _default_constraint_mode_ -sdc_files {results_syn/syn_out._default_constraint_mode_.sdc}
 
create_analysis_view -name _default_view_  -constraint_mode _default_constraint_mode_ -delay_corner _default_delay_corner_
 
 
set_analysis_view -setup _default_view_  -hold _default_view_
 
