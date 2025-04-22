######################################################################

# Created by Genus(TM) Synthesis Solution 18.14-s037_1 on Mon Apr 21 15:50:19 EDT 2025

# This file contains the RC script for /designs/BitAND_16b_flopped

######################################################################

if {![get_attribute_status wlec_internal_to_write_lec_db_for_invocation -type root]} {define_attribute -obj_type root -category lec -data_type string -help_string {Capture internal write_lec variables.} wlec_internal_to_write_lec_db_for_invocation}
if {![get_attribute_status wlec_internal_to_write_lec_db_for_label -type root]} {define_attribute -obj_type root -category lec -data_type string -help_string {Capture internal write_lec variables.} wlec_internal_to_write_lec_db_for_label}
if {![get_attribute_status wlec_internal_to_write_lec_label_data -type root]} {define_attribute -obj_type root -category lec -data_type string -help_string {Capture internal write_lec variables.} wlec_internal_to_write_lec_label_data}
::legacy::set_attribute -quiet common_ui false /
::legacy::set_attribute -quiet design_mode_process 70.0 /
::legacy::set_attribute -quiet phys_assume_met_fill 0.0 /
::legacy::set_attribute -quiet map_placed_for_hum false /
::legacy::set_attribute -quiet phys_use_invs_extraction true /
::legacy::set_attribute -quiet phys_route_time_out 120.0 /
::legacy::set_attribute -quiet capacitance_per_unit_length_mmmc {} /
::legacy::set_attribute -quiet resistance_per_unit_length_mmmc {} /
::legacy::set_attribute -quiet lp_insert_clock_gating true /
::legacy::set_attribute -quiet runtime_by_stage {{PBS_Generic-Start 0 21 0.0 10.0} {to_generic 2 24 2 12} {first_condense 2 27 2 15} {PBS_Generic_Opt-Post 6 27 5.639552999999999 15.639553} {{PBS_Generic-Postgen HBO Optimizations} 1 28 0.0 15.639553} {PBS_TechMap-Start 0 28 0.0 15.639553} {{PBS_TechMap-Premap HBO Optimizations} 0 28 0.0 15.639553} {second_condense 2 30 1 18} {reify 5 35 7 25} {global_incr_map 1 36 0 25} {{PBS_Techmap-Global Mapping} 8 36 7.796078999999999 23.435632} {{PBS_TechMap-Datapath Postmap Operations} 1 37 1.0 24.435632} {{PBS_TechMap-Postmap HBO Optimizations} 0 38 0.0 24.435632} {{PBS_TechMap-Postmap Clock Gating} 0 38 0.0 24.435632} {{PBS_TechMap-Postmap Cleanup} 0 38 0.0 24.435632} {PBS_Techmap-Post_MBCI 0 38 0.0 24.435632} {incr_opt 2 40 1 28} } /
::legacy::set_attribute -quiet hdl_flatten_complex_port true /
::legacy::set_attribute -quiet hdl_bus_wire_naming_style %s_%d /
::legacy::set_attribute -quiet hdl_array_naming_style %s_%d /
::legacy::set_attribute -quiet tinfo_tstamp_file .rs_dchinmay.tstamp /
::legacy::set_attribute -quiet metric_enable true /
::legacy::set_attribute -quiet metric_page_cfg {} /
::legacy::set_attribute -quiet use_area_from_lef true /
::legacy::set_attribute -quiet hdl_resolve_instance_with_libcell true /
::legacy::set_attribute -quiet flow_metrics_snapshot_uuid 650bb998-ff24-468b-b72b-d53c87633212 /
::legacy::set_attribute -quiet auto_ungroup none /
::legacy::set_attribute -quiet compensative_dpul_driver 0 /
::legacy::set_attribute -quiet phys_use_segment_parasitics true /
::legacy::set_attribute -quiet probabilistic_extraction true /
::legacy::set_attribute -quiet ple_correlation_factors {1.9000 2.0000} /
::legacy::set_attribute -quiet maximum_interval_of_vias inf /
::legacy::set_attribute -quiet layer_aware_buffer true /
::legacy::set_attribute -quiet ple_mode global /
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/NangateOpenCellLibrary/operating_conditions/typical
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/NangateOpenCellLibrary/operating_conditions/_nominal_
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name ideal_clock -domain domain_1 -period 10000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -remove -design /designs/BitAND_16b_flopped /designs/BitAND_16b_flopped/ports_in/clk
define_cost_group -design /designs/BitAND_16b_flopped -name ideal_clock
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del {{/designs/BitAND_16b_flopped/ports_in/a[15]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_1_1 {{/designs/BitAND_16b_flopped/ports_in/a[14]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_2_1 {{/designs/BitAND_16b_flopped/ports_in/a[13]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_3_1 {{/designs/BitAND_16b_flopped/ports_in/a[12]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_4_1 {{/designs/BitAND_16b_flopped/ports_in/a[11]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_5_1 {{/designs/BitAND_16b_flopped/ports_in/a[10]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_6_1 {{/designs/BitAND_16b_flopped/ports_in/a[9]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_7_1 {{/designs/BitAND_16b_flopped/ports_in/a[8]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_8_1 {{/designs/BitAND_16b_flopped/ports_in/a[7]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_9_1 {{/designs/BitAND_16b_flopped/ports_in/a[6]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_10_1 {{/designs/BitAND_16b_flopped/ports_in/a[5]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_11_1 {{/designs/BitAND_16b_flopped/ports_in/a[4]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_12_1 {{/designs/BitAND_16b_flopped/ports_in/a[3]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_13_1 {{/designs/BitAND_16b_flopped/ports_in/a[2]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_14_1 {{/designs/BitAND_16b_flopped/ports_in/a[1]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_15_1 {{/designs/BitAND_16b_flopped/ports_in/a[0]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_16_1 {{/designs/BitAND_16b_flopped/ports_in/b[15]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_17_1 {{/designs/BitAND_16b_flopped/ports_in/b[14]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_18_1 {{/designs/BitAND_16b_flopped/ports_in/b[13]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_19_1 {{/designs/BitAND_16b_flopped/ports_in/b[12]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_20_1 {{/designs/BitAND_16b_flopped/ports_in/b[11]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_21_1 {{/designs/BitAND_16b_flopped/ports_in/b[10]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_22_1 {{/designs/BitAND_16b_flopped/ports_in/b[9]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_23_1 {{/designs/BitAND_16b_flopped/ports_in/b[8]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_24_1 {{/designs/BitAND_16b_flopped/ports_in/b[7]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_25_1 {{/designs/BitAND_16b_flopped/ports_in/b[6]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_26_1 {{/designs/BitAND_16b_flopped/ports_in/b[5]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_27_1 {{/designs/BitAND_16b_flopped/ports_in/b[4]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_28_1 {{/designs/BitAND_16b_flopped/ports_in/b[3]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_29_1 {{/designs/BitAND_16b_flopped/ports_in/b[2]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_30_1 {{/designs/BitAND_16b_flopped/ports_in/b[1]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_31_1 {{/designs/BitAND_16b_flopped/ports_in/b[0]}}
external_delay -accumulate -input {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name in_del_32_1 /designs/BitAND_16b_flopped/ports_in/clk
external_delay -accumulate -output {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name ou_del {{/designs/BitAND_16b_flopped/ports_out/result[15]}}
external_delay -accumulate -output {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name ou_del_33_1 {{/designs/BitAND_16b_flopped/ports_out/result[14]}}
external_delay -accumulate -output {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name ou_del_34_1 {{/designs/BitAND_16b_flopped/ports_out/result[13]}}
external_delay -accumulate -output {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name ou_del_35_1 {{/designs/BitAND_16b_flopped/ports_out/result[12]}}
external_delay -accumulate -output {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name ou_del_36_1 {{/designs/BitAND_16b_flopped/ports_out/result[11]}}
external_delay -accumulate -output {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name ou_del_37_1 {{/designs/BitAND_16b_flopped/ports_out/result[10]}}
external_delay -accumulate -output {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name ou_del_38_1 {{/designs/BitAND_16b_flopped/ports_out/result[9]}}
external_delay -accumulate -output {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name ou_del_39_1 {{/designs/BitAND_16b_flopped/ports_out/result[8]}}
external_delay -accumulate -output {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name ou_del_40_1 {{/designs/BitAND_16b_flopped/ports_out/result[7]}}
external_delay -accumulate -output {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name ou_del_41_1 {{/designs/BitAND_16b_flopped/ports_out/result[6]}}
external_delay -accumulate -output {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name ou_del_42_1 {{/designs/BitAND_16b_flopped/ports_out/result[5]}}
external_delay -accumulate -output {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name ou_del_43_1 {{/designs/BitAND_16b_flopped/ports_out/result[4]}}
external_delay -accumulate -output {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name ou_del_44_1 {{/designs/BitAND_16b_flopped/ports_out/result[3]}}
external_delay -accumulate -output {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name ou_del_45_1 {{/designs/BitAND_16b_flopped/ports_out/result[2]}}
external_delay -accumulate -output {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name ou_del_46_1 {{/designs/BitAND_16b_flopped/ports_out/result[1]}}
external_delay -accumulate -output {0.0 0.0 0.0 0.0} -clock /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock -name ou_del_47_1 {{/designs/BitAND_16b_flopped/ports_out/result[0]}}
path_group -paths [specify_paths -to /designs/BitAND_16b_flopped/timing/clock_domains/domain_1/ideal_clock]  -name ideal_clock -group /designs/BitAND_16b_flopped/timing/cost_groups/ideal_clock -user_priority -1047552
# BEGIN DFT SECTION
::legacy::set_attribute -quiet dft_scan_style muxed_scan /
::legacy::set_attribute -quiet dft_scanbit_waveform_analysis false /
# END DFT SECTION
::legacy::set_attribute -quiet max_transition 2500.0 /designs/BitAND_16b_flopped
::legacy::set_attribute -quiet max_fanout 20.000 /designs/BitAND_16b_flopped
::legacy::set_attribute -quiet qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 4079} {cell_count 2224} {utilization  0.00} {runtime 2 24 2 12} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 4720} {cell_count 2606} {utilization  0.00} {runtime 2 27 2 15} }{second_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 4720} {cell_count 2606} {utilization  0.00} {runtime 2 30 1 18} }{reify {wns 7777} {tns 0} {vep 0} {area 1941} {cell_count 744} {utilization  0.00} {runtime 5 35 7 25} }{global_incr_map {wns 7764} {tns 0} {vep 0} {area 1919} {cell_count 744} {utilization  0.00} {runtime 1 36 0 25} }{incr_opt {wns 214748365} {tns 0} {vep 0} {area 1913} {cell_count 722} {utilization  0.00} {runtime 2 40 1 28} }} /designs/BitAND_16b_flopped
::legacy::set_attribute -quiet seq_mbci_coverage 0.0 /designs/BitAND_16b_flopped
::legacy::set_attribute -quiet hdl_user_name BitAND_16b_flopped /designs/BitAND_16b_flopped
::legacy::set_attribute -quiet hdl_filelist {{default -sv {SYNTHESIS} {inputs/1_BitAND_16b.sv inputs/2_BitAND_16b_flopped.sv} {} {}}} /designs/BitAND_16b_flopped
::legacy::set_attribute -quiet verification_directory fv/BitAND_16b_flopped /designs/BitAND_16b_flopped
::legacy::set_attribute -quiet seq_reason_deleted {{multiplied_result_flopped_a_reg_1 {{constant 0}}} {multiplied_result_flopped_b_reg_1 {{constant 0}}}} /designs/BitAND_16b_flopped
::legacy::set_attribute -quiet lp_clock_gating_min_flops 3 /designs/BitAND_16b_flopped
::legacy::set_attribute -quiet arch_filename inputs/2_BitAND_16b_flopped.sv /designs/BitAND_16b_flopped
::legacy::set_attribute -quiet entity_filename inputs/2_BitAND_16b_flopped.sv /designs/BitAND_16b_flopped
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[15]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[15]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[15]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[15]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/a[15]}
::legacy::set_attribute -quiet original_name {a[15]} {/designs/BitAND_16b_flopped/ports_in/a[15]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[14]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[14]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[14]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[14]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/a[14]}
::legacy::set_attribute -quiet original_name {a[14]} {/designs/BitAND_16b_flopped/ports_in/a[14]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[13]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[13]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[13]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[13]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/a[13]}
::legacy::set_attribute -quiet original_name {a[13]} {/designs/BitAND_16b_flopped/ports_in/a[13]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[12]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[12]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[12]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[12]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/a[12]}
::legacy::set_attribute -quiet original_name {a[12]} {/designs/BitAND_16b_flopped/ports_in/a[12]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[11]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[11]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[11]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[11]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/a[11]}
::legacy::set_attribute -quiet original_name {a[11]} {/designs/BitAND_16b_flopped/ports_in/a[11]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[10]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[10]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[10]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[10]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/a[10]}
::legacy::set_attribute -quiet original_name {a[10]} {/designs/BitAND_16b_flopped/ports_in/a[10]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[9]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[9]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[9]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[9]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/a[9]}
::legacy::set_attribute -quiet original_name {a[9]} {/designs/BitAND_16b_flopped/ports_in/a[9]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[8]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[8]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[8]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[8]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/a[8]}
::legacy::set_attribute -quiet original_name {a[8]} {/designs/BitAND_16b_flopped/ports_in/a[8]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[7]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[7]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[7]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[7]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/a[7]}
::legacy::set_attribute -quiet original_name {a[7]} {/designs/BitAND_16b_flopped/ports_in/a[7]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[6]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[6]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[6]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[6]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/a[6]}
::legacy::set_attribute -quiet original_name {a[6]} {/designs/BitAND_16b_flopped/ports_in/a[6]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[5]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[5]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[5]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[5]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/a[5]}
::legacy::set_attribute -quiet original_name {a[5]} {/designs/BitAND_16b_flopped/ports_in/a[5]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[4]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[4]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[4]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[4]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/a[4]}
::legacy::set_attribute -quiet original_name {a[4]} {/designs/BitAND_16b_flopped/ports_in/a[4]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[3]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[3]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[3]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[3]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/a[3]}
::legacy::set_attribute -quiet original_name {a[3]} {/designs/BitAND_16b_flopped/ports_in/a[3]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[2]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[2]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[2]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[2]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/a[2]}
::legacy::set_attribute -quiet original_name {a[2]} {/designs/BitAND_16b_flopped/ports_in/a[2]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[1]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[1]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[1]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[1]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/a[1]}
::legacy::set_attribute -quiet original_name {a[1]} {/designs/BitAND_16b_flopped/ports_in/a[1]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[0]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[0]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[0]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/a[0]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/a[0]}
::legacy::set_attribute -quiet original_name {a[0]} {/designs/BitAND_16b_flopped/ports_in/a[0]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[15]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[15]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[15]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[15]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/b[15]}
::legacy::set_attribute -quiet original_name {b[15]} {/designs/BitAND_16b_flopped/ports_in/b[15]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[14]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[14]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[14]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[14]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/b[14]}
::legacy::set_attribute -quiet original_name {b[14]} {/designs/BitAND_16b_flopped/ports_in/b[14]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[13]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[13]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[13]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[13]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/b[13]}
::legacy::set_attribute -quiet original_name {b[13]} {/designs/BitAND_16b_flopped/ports_in/b[13]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[12]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[12]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[12]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[12]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/b[12]}
::legacy::set_attribute -quiet original_name {b[12]} {/designs/BitAND_16b_flopped/ports_in/b[12]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[11]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[11]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[11]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[11]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/b[11]}
::legacy::set_attribute -quiet original_name {b[11]} {/designs/BitAND_16b_flopped/ports_in/b[11]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[10]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[10]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[10]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[10]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/b[10]}
::legacy::set_attribute -quiet original_name {b[10]} {/designs/BitAND_16b_flopped/ports_in/b[10]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[9]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[9]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[9]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[9]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/b[9]}
::legacy::set_attribute -quiet original_name {b[9]} {/designs/BitAND_16b_flopped/ports_in/b[9]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[8]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[8]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[8]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[8]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/b[8]}
::legacy::set_attribute -quiet original_name {b[8]} {/designs/BitAND_16b_flopped/ports_in/b[8]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[7]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[7]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[7]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[7]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/b[7]}
::legacy::set_attribute -quiet original_name {b[7]} {/designs/BitAND_16b_flopped/ports_in/b[7]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[6]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[6]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[6]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[6]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/b[6]}
::legacy::set_attribute -quiet original_name {b[6]} {/designs/BitAND_16b_flopped/ports_in/b[6]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[5]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[5]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[5]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[5]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/b[5]}
::legacy::set_attribute -quiet original_name {b[5]} {/designs/BitAND_16b_flopped/ports_in/b[5]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[4]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[4]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[4]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[4]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/b[4]}
::legacy::set_attribute -quiet original_name {b[4]} {/designs/BitAND_16b_flopped/ports_in/b[4]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[3]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[3]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[3]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[3]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/b[3]}
::legacy::set_attribute -quiet original_name {b[3]} {/designs/BitAND_16b_flopped/ports_in/b[3]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[2]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[2]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[2]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[2]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/b[2]}
::legacy::set_attribute -quiet original_name {b[2]} {/designs/BitAND_16b_flopped/ports_in/b[2]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[1]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[1]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[1]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[1]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/b[1]}
::legacy::set_attribute -quiet original_name {b[1]} {/designs/BitAND_16b_flopped/ports_in/b[1]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[0]}
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[0]}
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[0]}
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN {/designs/BitAND_16b_flopped/ports_in/b[0]}
::legacy::set_attribute -quiet ignore_external_driver_drc true {/designs/BitAND_16b_flopped/ports_in/b[0]}
::legacy::set_attribute -quiet original_name {b[0]} {/designs/BitAND_16b_flopped/ports_in/b[0]}
::legacy::set_attribute -quiet driver_pin_rise_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN /designs/BitAND_16b_flopped/ports_in/clk
::legacy::set_attribute -quiet driver_pin_fall_min /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN /designs/BitAND_16b_flopped/ports_in/clk
::legacy::set_attribute -quiet driver_pin_rise_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN /designs/BitAND_16b_flopped/ports_in/clk
::legacy::set_attribute -quiet driver_pin_fall_max /libraries/NangateOpenCellLibrary/libcells/INV_X2/ZN /designs/BitAND_16b_flopped/ports_in/clk
::legacy::set_attribute -quiet ignore_external_driver_drc true /designs/BitAND_16b_flopped/ports_in/clk
::legacy::set_attribute -quiet original_name clk /designs/BitAND_16b_flopped/ports_in/clk
::legacy::set_attribute -quiet external_pin_cap_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[15]}
::legacy::set_attribute -quiet external_capacitance_max {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[15]}
::legacy::set_attribute -quiet external_capacitance_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[15]}
::legacy::set_attribute -quiet original_name {result[15]} {/designs/BitAND_16b_flopped/ports_out/result[15]}
::legacy::set_attribute -quiet external_pin_cap {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[15]}
::legacy::set_attribute -quiet external_pin_cap_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[14]}
::legacy::set_attribute -quiet external_capacitance_max {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[14]}
::legacy::set_attribute -quiet external_capacitance_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[14]}
::legacy::set_attribute -quiet original_name {result[14]} {/designs/BitAND_16b_flopped/ports_out/result[14]}
::legacy::set_attribute -quiet external_pin_cap {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[14]}
::legacy::set_attribute -quiet external_pin_cap_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[13]}
::legacy::set_attribute -quiet external_capacitance_max {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[13]}
::legacy::set_attribute -quiet external_capacitance_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[13]}
::legacy::set_attribute -quiet original_name {result[13]} {/designs/BitAND_16b_flopped/ports_out/result[13]}
::legacy::set_attribute -quiet external_pin_cap {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[13]}
::legacy::set_attribute -quiet external_pin_cap_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[12]}
::legacy::set_attribute -quiet external_capacitance_max {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[12]}
::legacy::set_attribute -quiet external_capacitance_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[12]}
::legacy::set_attribute -quiet original_name {result[12]} {/designs/BitAND_16b_flopped/ports_out/result[12]}
::legacy::set_attribute -quiet external_pin_cap {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[12]}
::legacy::set_attribute -quiet external_pin_cap_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[11]}
::legacy::set_attribute -quiet external_capacitance_max {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[11]}
::legacy::set_attribute -quiet external_capacitance_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[11]}
::legacy::set_attribute -quiet original_name {result[11]} {/designs/BitAND_16b_flopped/ports_out/result[11]}
::legacy::set_attribute -quiet external_pin_cap {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[11]}
::legacy::set_attribute -quiet external_pin_cap_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[10]}
::legacy::set_attribute -quiet external_capacitance_max {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[10]}
::legacy::set_attribute -quiet external_capacitance_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[10]}
::legacy::set_attribute -quiet original_name {result[10]} {/designs/BitAND_16b_flopped/ports_out/result[10]}
::legacy::set_attribute -quiet external_pin_cap {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[10]}
::legacy::set_attribute -quiet external_pin_cap_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[9]}
::legacy::set_attribute -quiet external_capacitance_max {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[9]}
::legacy::set_attribute -quiet external_capacitance_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[9]}
::legacy::set_attribute -quiet original_name {result[9]} {/designs/BitAND_16b_flopped/ports_out/result[9]}
::legacy::set_attribute -quiet external_pin_cap {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[9]}
::legacy::set_attribute -quiet external_pin_cap_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[8]}
::legacy::set_attribute -quiet external_capacitance_max {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[8]}
::legacy::set_attribute -quiet external_capacitance_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[8]}
::legacy::set_attribute -quiet original_name {result[8]} {/designs/BitAND_16b_flopped/ports_out/result[8]}
::legacy::set_attribute -quiet external_pin_cap {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[8]}
::legacy::set_attribute -quiet external_pin_cap_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[7]}
::legacy::set_attribute -quiet external_capacitance_max {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[7]}
::legacy::set_attribute -quiet external_capacitance_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[7]}
::legacy::set_attribute -quiet original_name {result[7]} {/designs/BitAND_16b_flopped/ports_out/result[7]}
::legacy::set_attribute -quiet external_pin_cap {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[7]}
::legacy::set_attribute -quiet external_pin_cap_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[6]}
::legacy::set_attribute -quiet external_capacitance_max {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[6]}
::legacy::set_attribute -quiet external_capacitance_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[6]}
::legacy::set_attribute -quiet original_name {result[6]} {/designs/BitAND_16b_flopped/ports_out/result[6]}
::legacy::set_attribute -quiet external_pin_cap {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[6]}
::legacy::set_attribute -quiet external_pin_cap_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[5]}
::legacy::set_attribute -quiet external_capacitance_max {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[5]}
::legacy::set_attribute -quiet external_capacitance_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[5]}
::legacy::set_attribute -quiet original_name {result[5]} {/designs/BitAND_16b_flopped/ports_out/result[5]}
::legacy::set_attribute -quiet external_pin_cap {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[5]}
::legacy::set_attribute -quiet external_pin_cap_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[4]}
::legacy::set_attribute -quiet external_capacitance_max {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[4]}
::legacy::set_attribute -quiet external_capacitance_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[4]}
::legacy::set_attribute -quiet original_name {result[4]} {/designs/BitAND_16b_flopped/ports_out/result[4]}
::legacy::set_attribute -quiet external_pin_cap {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[4]}
::legacy::set_attribute -quiet external_pin_cap_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[3]}
::legacy::set_attribute -quiet external_capacitance_max {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[3]}
::legacy::set_attribute -quiet external_capacitance_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[3]}
::legacy::set_attribute -quiet original_name {result[3]} {/designs/BitAND_16b_flopped/ports_out/result[3]}
::legacy::set_attribute -quiet external_pin_cap {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[3]}
::legacy::set_attribute -quiet external_pin_cap_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[2]}
::legacy::set_attribute -quiet external_capacitance_max {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[2]}
::legacy::set_attribute -quiet external_capacitance_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[2]}
::legacy::set_attribute -quiet original_name {result[2]} {/designs/BitAND_16b_flopped/ports_out/result[2]}
::legacy::set_attribute -quiet external_pin_cap {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[2]}
::legacy::set_attribute -quiet external_pin_cap_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[1]}
::legacy::set_attribute -quiet external_capacitance_max {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[1]}
::legacy::set_attribute -quiet external_capacitance_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[1]}
::legacy::set_attribute -quiet original_name {result[1]} {/designs/BitAND_16b_flopped/ports_out/result[1]}
::legacy::set_attribute -quiet external_pin_cap {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[1]}
::legacy::set_attribute -quiet external_pin_cap_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[0]}
::legacy::set_attribute -quiet external_capacitance_max {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[0]}
::legacy::set_attribute -quiet external_capacitance_min 7.0 {/designs/BitAND_16b_flopped/ports_out/result[0]}
::legacy::set_attribute -quiet original_name {result[0]} {/designs/BitAND_16b_flopped/ports_out/result[0]}
::legacy::set_attribute -quiet external_pin_cap {7.0 7.0} {/designs/BitAND_16b_flopped/ports_out/result[0]}
::legacy::set_attribute -quiet hdl_user_name BitAND_16b /designs/BitAND_16b_flopped/subdesigns/BitAND_16b_flopped_BitAND_16b
::legacy::set_attribute -quiet hdl_filelist {{default -sv {SYNTHESIS} {inputs/1_BitAND_16b.sv} {} {}}} /designs/BitAND_16b_flopped/subdesigns/BitAND_16b_flopped_BitAND_16b
::legacy::set_attribute -quiet lp_clock_gating_min_flops 3 /designs/BitAND_16b_flopped/subdesigns/BitAND_16b_flopped_BitAND_16b
::legacy::set_attribute -quiet arch_filename inputs/1_BitAND_16b.sv /designs/BitAND_16b_flopped/subdesigns/BitAND_16b_flopped_BitAND_16b
::legacy::set_attribute -quiet entity_filename inputs/1_BitAND_16b.sv /designs/BitAND_16b_flopped/subdesigns/BitAND_16b_flopped_BitAND_16b
::legacy::set_attribute -quiet original_name {{a_flopped[0][0]}} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_0
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_0
::legacy::set_attribute -quiet single_bit_orig_name {a_flopped[0][0]} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_0
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_0
::legacy::set_attribute -quiet original_name {a_flopped[0][0]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_0/pins_out/Q
::legacy::set_attribute -quiet original_name {a_flopped[0][0]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_0/pins_out/QN
::legacy::set_attribute -quiet original_name {{a_flopped[0][1]}} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_1
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_1
::legacy::set_attribute -quiet single_bit_orig_name {a_flopped[0][1]} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_1
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_1
::legacy::set_attribute -quiet original_name {a_flopped[0][1]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_1/pins_out/Q
::legacy::set_attribute -quiet original_name {a_flopped[0][1]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_1/pins_out/QN
::legacy::set_attribute -quiet original_name {{a_flopped[0][2]}} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_2
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_2
::legacy::set_attribute -quiet single_bit_orig_name {a_flopped[0][2]} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_2
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_2
::legacy::set_attribute -quiet original_name {a_flopped[0][2]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_2/pins_out/Q
::legacy::set_attribute -quiet original_name {a_flopped[0][2]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_2/pins_out/QN
::legacy::set_attribute -quiet original_name {{a_flopped[0][3]}} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_3
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_3
::legacy::set_attribute -quiet single_bit_orig_name {a_flopped[0][3]} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_3
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_3
::legacy::set_attribute -quiet original_name {a_flopped[0][3]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_3/pins_out/Q
::legacy::set_attribute -quiet original_name {a_flopped[0][3]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_3/pins_out/QN
::legacy::set_attribute -quiet original_name {{a_flopped[0][4]}} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_4
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_4
::legacy::set_attribute -quiet single_bit_orig_name {a_flopped[0][4]} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_4
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_4
::legacy::set_attribute -quiet original_name {a_flopped[0][4]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_4/pins_out/Q
::legacy::set_attribute -quiet original_name {a_flopped[0][4]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_4/pins_out/QN
::legacy::set_attribute -quiet original_name {{a_flopped[0][5]}} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_5
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_5
::legacy::set_attribute -quiet single_bit_orig_name {a_flopped[0][5]} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_5
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_5
::legacy::set_attribute -quiet original_name {a_flopped[0][5]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_5/pins_out/Q
::legacy::set_attribute -quiet original_name {a_flopped[0][5]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_5/pins_out/QN
::legacy::set_attribute -quiet original_name {{a_flopped[0][6]}} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_6
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_6
::legacy::set_attribute -quiet single_bit_orig_name {a_flopped[0][6]} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_6
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_6
::legacy::set_attribute -quiet original_name {a_flopped[0][6]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_6/pins_out/Q
::legacy::set_attribute -quiet original_name {a_flopped[0][6]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_6/pins_out/QN
::legacy::set_attribute -quiet original_name {{a_flopped[0][7]}} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_7
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_7
::legacy::set_attribute -quiet single_bit_orig_name {a_flopped[0][7]} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_7
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_7
::legacy::set_attribute -quiet original_name {a_flopped[0][7]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_7/pins_out/Q
::legacy::set_attribute -quiet original_name {a_flopped[0][7]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_7/pins_out/QN
::legacy::set_attribute -quiet original_name {{a_flopped[0][8]}} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_8
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_8
::legacy::set_attribute -quiet single_bit_orig_name {a_flopped[0][8]} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_8
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_8
::legacy::set_attribute -quiet original_name {a_flopped[0][8]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_8/pins_out/Q
::legacy::set_attribute -quiet original_name {a_flopped[0][8]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_8/pins_out/QN
::legacy::set_attribute -quiet original_name {{a_flopped[0][9]}} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_9
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_9
::legacy::set_attribute -quiet single_bit_orig_name {a_flopped[0][9]} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_9
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_9
::legacy::set_attribute -quiet original_name {a_flopped[0][9]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_9/pins_out/Q
::legacy::set_attribute -quiet original_name {a_flopped[0][9]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_9/pins_out/QN
::legacy::set_attribute -quiet original_name {{a_flopped[0][10]}} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_10
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_10
::legacy::set_attribute -quiet single_bit_orig_name {a_flopped[0][10]} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_10
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_10
::legacy::set_attribute -quiet original_name {a_flopped[0][10]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_10/pins_out/Q
::legacy::set_attribute -quiet original_name {a_flopped[0][10]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_10/pins_out/QN
::legacy::set_attribute -quiet original_name {{a_flopped[0][11]}} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_11
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_11
::legacy::set_attribute -quiet single_bit_orig_name {a_flopped[0][11]} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_11
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_11
::legacy::set_attribute -quiet original_name {a_flopped[0][11]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_11/pins_out/Q
::legacy::set_attribute -quiet original_name {a_flopped[0][11]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_11/pins_out/QN
::legacy::set_attribute -quiet original_name {{a_flopped[0][12]}} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_12
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_12
::legacy::set_attribute -quiet single_bit_orig_name {a_flopped[0][12]} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_12
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_12
::legacy::set_attribute -quiet original_name {a_flopped[0][12]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_12/pins_out/Q
::legacy::set_attribute -quiet original_name {a_flopped[0][12]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_12/pins_out/QN
::legacy::set_attribute -quiet original_name {{a_flopped[0][13]}} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_13
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_13
::legacy::set_attribute -quiet single_bit_orig_name {a_flopped[0][13]} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_13
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_13
::legacy::set_attribute -quiet original_name {a_flopped[0][13]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_13/pins_out/Q
::legacy::set_attribute -quiet original_name {a_flopped[0][13]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_13/pins_out/QN
::legacy::set_attribute -quiet original_name {{a_flopped[0][14]}} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_14
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_14
::legacy::set_attribute -quiet single_bit_orig_name {a_flopped[0][14]} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_14
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_14
::legacy::set_attribute -quiet original_name {a_flopped[0][14]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_14/pins_out/Q
::legacy::set_attribute -quiet original_name {a_flopped[0][14]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_14/pins_out/QN
::legacy::set_attribute -quiet original_name {{a_flopped[0][15]}} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_15
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_15
::legacy::set_attribute -quiet single_bit_orig_name {a_flopped[0][15]} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_15
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_15
::legacy::set_attribute -quiet original_name {a_flopped[0][15]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_15/pins_out/Q
::legacy::set_attribute -quiet original_name {a_flopped[0][15]/q} /designs/BitAND_16b_flopped/instances_seq/a_flopped_reg_0_15/pins_out/QN
::legacy::set_attribute -quiet original_name {{b_flopped[0][0]}} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_0
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_0
::legacy::set_attribute -quiet single_bit_orig_name {b_flopped[0][0]} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_0
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_0
::legacy::set_attribute -quiet original_name {b_flopped[0][0]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_0/pins_out/Q
::legacy::set_attribute -quiet original_name {b_flopped[0][0]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_0/pins_out/QN
::legacy::set_attribute -quiet original_name {{b_flopped[0][1]}} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_1
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_1
::legacy::set_attribute -quiet single_bit_orig_name {b_flopped[0][1]} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_1
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_1
::legacy::set_attribute -quiet original_name {b_flopped[0][1]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_1/pins_out/Q
::legacy::set_attribute -quiet original_name {b_flopped[0][1]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_1/pins_out/QN
::legacy::set_attribute -quiet original_name {{b_flopped[0][2]}} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_2
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_2
::legacy::set_attribute -quiet single_bit_orig_name {b_flopped[0][2]} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_2
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_2
::legacy::set_attribute -quiet original_name {b_flopped[0][2]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_2/pins_out/Q
::legacy::set_attribute -quiet original_name {b_flopped[0][2]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_2/pins_out/QN
::legacy::set_attribute -quiet original_name {{b_flopped[0][3]}} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_3
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_3
::legacy::set_attribute -quiet single_bit_orig_name {b_flopped[0][3]} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_3
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_3
::legacy::set_attribute -quiet original_name {b_flopped[0][3]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_3/pins_out/Q
::legacy::set_attribute -quiet original_name {b_flopped[0][3]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_3/pins_out/QN
::legacy::set_attribute -quiet original_name {{b_flopped[0][4]}} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_4
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_4
::legacy::set_attribute -quiet single_bit_orig_name {b_flopped[0][4]} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_4
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_4
::legacy::set_attribute -quiet original_name {b_flopped[0][4]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_4/pins_out/Q
::legacy::set_attribute -quiet original_name {b_flopped[0][4]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_4/pins_out/QN
::legacy::set_attribute -quiet original_name {{b_flopped[0][5]}} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_5
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_5
::legacy::set_attribute -quiet single_bit_orig_name {b_flopped[0][5]} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_5
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_5
::legacy::set_attribute -quiet original_name {b_flopped[0][5]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_5/pins_out/Q
::legacy::set_attribute -quiet original_name {b_flopped[0][5]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_5/pins_out/QN
::legacy::set_attribute -quiet original_name {{b_flopped[0][6]}} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_6
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_6
::legacy::set_attribute -quiet single_bit_orig_name {b_flopped[0][6]} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_6
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_6
::legacy::set_attribute -quiet original_name {b_flopped[0][6]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_6/pins_out/Q
::legacy::set_attribute -quiet original_name {b_flopped[0][6]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_6/pins_out/QN
::legacy::set_attribute -quiet original_name {{b_flopped[0][7]}} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_7
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_7
::legacy::set_attribute -quiet single_bit_orig_name {b_flopped[0][7]} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_7
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_7
::legacy::set_attribute -quiet original_name {b_flopped[0][7]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_7/pins_out/Q
::legacy::set_attribute -quiet original_name {b_flopped[0][7]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_7/pins_out/QN
::legacy::set_attribute -quiet original_name {{b_flopped[0][8]}} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_8
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_8
::legacy::set_attribute -quiet single_bit_orig_name {b_flopped[0][8]} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_8
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_8
::legacy::set_attribute -quiet original_name {b_flopped[0][8]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_8/pins_out/Q
::legacy::set_attribute -quiet original_name {b_flopped[0][8]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_8/pins_out/QN
::legacy::set_attribute -quiet original_name {{b_flopped[0][9]}} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_9
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_9
::legacy::set_attribute -quiet single_bit_orig_name {b_flopped[0][9]} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_9
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_9
::legacy::set_attribute -quiet original_name {b_flopped[0][9]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_9/pins_out/Q
::legacy::set_attribute -quiet original_name {b_flopped[0][9]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_9/pins_out/QN
::legacy::set_attribute -quiet original_name {{b_flopped[0][10]}} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_10
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_10
::legacy::set_attribute -quiet single_bit_orig_name {b_flopped[0][10]} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_10
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_10
::legacy::set_attribute -quiet original_name {b_flopped[0][10]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_10/pins_out/Q
::legacy::set_attribute -quiet original_name {b_flopped[0][10]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_10/pins_out/QN
::legacy::set_attribute -quiet original_name {{b_flopped[0][11]}} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_11
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_11
::legacy::set_attribute -quiet single_bit_orig_name {b_flopped[0][11]} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_11
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_11
::legacy::set_attribute -quiet original_name {b_flopped[0][11]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_11/pins_out/Q
::legacy::set_attribute -quiet original_name {b_flopped[0][11]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_11/pins_out/QN
::legacy::set_attribute -quiet original_name {{b_flopped[0][12]}} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_12
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_12
::legacy::set_attribute -quiet single_bit_orig_name {b_flopped[0][12]} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_12
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_12
::legacy::set_attribute -quiet original_name {b_flopped[0][12]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_12/pins_out/Q
::legacy::set_attribute -quiet original_name {b_flopped[0][12]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_12/pins_out/QN
::legacy::set_attribute -quiet original_name {{b_flopped[0][13]}} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_13
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_13
::legacy::set_attribute -quiet single_bit_orig_name {b_flopped[0][13]} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_13
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_13
::legacy::set_attribute -quiet original_name {b_flopped[0][13]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_13/pins_out/Q
::legacy::set_attribute -quiet original_name {b_flopped[0][13]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_13/pins_out/QN
::legacy::set_attribute -quiet original_name {{b_flopped[0][14]}} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_14
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_14
::legacy::set_attribute -quiet single_bit_orig_name {b_flopped[0][14]} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_14
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_14
::legacy::set_attribute -quiet original_name {b_flopped[0][14]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_14/pins_out/Q
::legacy::set_attribute -quiet original_name {b_flopped[0][14]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_14/pins_out/QN
::legacy::set_attribute -quiet original_name {{b_flopped[0][15]}} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_15
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_15
::legacy::set_attribute -quiet single_bit_orig_name {b_flopped[0][15]} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_15
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_15
::legacy::set_attribute -quiet original_name {b_flopped[0][15]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_15/pins_out/Q
::legacy::set_attribute -quiet original_name {b_flopped[0][15]/q} /designs/BitAND_16b_flopped/instances_seq/b_flopped_reg_0_15/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[0]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_0
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_0
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[0]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_0
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_0
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[0]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_0/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[0]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_0/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[2]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_2
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_2
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[2]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_2
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_2
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[2]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_2/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[2]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_2/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[3]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_3
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_3
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[3]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_3
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_3
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[3]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_3/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[3]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_3/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[4]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_4
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_4
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[4]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_4
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_4
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[4]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_4/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[4]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_4/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[5]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_5
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_5
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[5]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_5
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_5
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[5]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_5/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[5]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_5/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[6]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_6
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_6
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[6]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_6
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_6
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[6]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_6/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[6]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_6/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[7]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_7
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_7
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[7]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_7
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_7
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[7]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_7/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[7]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_7/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[8]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_8
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_8
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[8]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_8
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_8
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[8]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_8/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[8]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_8/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[9]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_9
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_9
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[9]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_9
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_9
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[9]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_9/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[9]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_9/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[10]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_10
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_10
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[10]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_10
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_10
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[10]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_10/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[10]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_10/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[11]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_11
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_11
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[11]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_11
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_11
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[11]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_11/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[11]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_11/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[12]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_12
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_12
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[12]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_12
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_12
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[12]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_12/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[12]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_12/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[13]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_13
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_13
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[13]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_13
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_13
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[13]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_13/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[13]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_13/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[14]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_14
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_14
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[14]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_14
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_14
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[14]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_14/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[14]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_14/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[15]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_15
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_15
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[15]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_15
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_15
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[15]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_15/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[15]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_15/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[16]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_16
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_16
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[16]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_16
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_16
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[16]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_16/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[16]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_16/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[17]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_17
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_17
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[17]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_17
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_17
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[17]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_17/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[17]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_17/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[18]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_18
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_18
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[18]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_18
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_18
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[18]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_18/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[18]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_18/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[19]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_19
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_19
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[19]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_19
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_19
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[19]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_19/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[19]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_19/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[20]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_20
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_20
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[20]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_20
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_20
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[20]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_20/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[20]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_20/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[21]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_21
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_21
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[21]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_21
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_21
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[21]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_21/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[21]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_21/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[22]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_22
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_22
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[22]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_22
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_22
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[22]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_22/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[22]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_22/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[23]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_23
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_23
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[23]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_23
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_23
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[23]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_23/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[23]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_23/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[24]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_24
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_24
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[24]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_24
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_24
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[24]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_24/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[24]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_24/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[25]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_25
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_25
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[25]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_25
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_25
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[25]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_25/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[25]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_25/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[26]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_26
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_26
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[26]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_26
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_26
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[26]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_26/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[26]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_26/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[27]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_27
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_27
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[27]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_27
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_27
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[27]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_27/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[27]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_27/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[28]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_28
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_28
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[28]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_28
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_28
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[28]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_28/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[28]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_28/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[29]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_29
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_29
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[29]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_29
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_29
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[29]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_29/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[29]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_29/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[30]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_30
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_30
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[30]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_30
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_30
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[30]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_30/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[30]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_30/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_a[31]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_31
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_31
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_a[31]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_31
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_31
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[31]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_31/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_a[31]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_a_reg_31/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[0]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_0
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_0
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[0]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_0
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_0
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[0]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_0/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[0]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_0/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[2]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_2
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_2
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[2]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_2
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_2
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[2]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_2/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[2]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_2/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[3]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_3
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_3
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[3]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_3
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_3
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[3]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_3/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[3]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_3/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[4]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_4
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_4
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[4]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_4
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_4
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[4]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_4/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[4]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_4/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[5]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_5
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_5
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[5]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_5
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_5
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[5]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_5/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[5]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_5/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[6]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_6
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_6
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[6]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_6
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_6
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[6]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_6/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[6]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_6/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[7]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_7
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_7
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[7]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_7
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_7
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[7]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_7/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[7]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_7/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[8]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_8
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_8
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[8]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_8
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_8
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[8]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_8/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[8]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_8/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[9]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_9
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_9
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[9]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_9
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_9
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[9]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_9/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[9]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_9/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[10]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_10
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_10
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[10]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_10
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_10
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[10]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_10/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[10]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_10/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[11]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_11
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_11
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[11]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_11
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_11
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[11]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_11/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[11]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_11/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[12]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_12
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_12
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[12]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_12
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_12
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[12]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_12/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[12]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_12/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[13]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_13
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_13
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[13]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_13
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_13
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[13]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_13/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[13]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_13/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[14]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_14
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_14
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[14]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_14
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_14
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[14]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_14/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[14]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_14/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[15]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_15
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_15
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[15]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_15
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_15
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[15]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_15/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[15]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_15/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[16]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_16
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_16
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[16]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_16
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_16
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[16]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_16/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[16]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_16/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[17]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_17
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_17
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[17]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_17
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_17
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[17]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_17/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[17]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_17/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[18]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_18
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_18
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[18]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_18
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_18
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[18]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_18/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[18]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_18/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[19]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_19
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_19
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[19]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_19
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_19
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[19]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_19/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[19]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_19/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[20]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_20
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_20
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[20]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_20
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_20
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[20]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_20/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[20]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_20/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[21]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_21
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_21
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[21]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_21
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_21
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[21]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_21/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[21]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_21/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[22]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_22
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_22
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[22]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_22
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_22
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[22]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_22/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[22]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_22/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[23]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_23
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_23
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[23]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_23
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_23
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[23]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_23/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[23]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_23/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[24]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_24
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_24
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[24]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_24
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_24
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[24]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_24/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[24]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_24/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[25]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_25
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_25
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[25]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_25
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_25
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[25]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_25/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[25]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_25/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[26]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_26
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_26
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[26]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_26
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_26
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[26]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_26/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[26]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_26/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[27]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_27
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_27
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[27]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_27
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_27
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[27]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_27/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[27]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_27/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[28]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_28
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_28
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[28]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_28
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_28
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[28]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_28/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[28]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_28/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[29]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_29
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_29
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[29]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_29
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_29
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[29]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_29/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[29]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_29/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[30]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_30
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_30
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[30]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_30
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_30
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[30]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_30/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[30]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_30/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_result_flopped_b[31]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_31
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_31
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_result_flopped_b[31]} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_31
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_31
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[31]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_31/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_result_flopped_b[31]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_result_flopped_b_reg_31/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_a[0]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_0
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_0
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_a[0]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_0
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_0
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[0]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_0/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[0]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_0/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_a[1]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_1
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_1
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_a[1]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_1
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_1
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[1]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_1/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[1]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_1/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_a[2]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_2
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_2
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_a[2]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_2
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_2
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[2]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_2/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[2]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_2/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_a[3]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_3
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_3
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_a[3]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_3
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_3
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[3]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_3/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[3]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_3/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_a[4]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_4
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_4
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_a[4]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_4
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_4
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[4]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_4/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[4]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_4/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_a[5]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_5
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_5
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_a[5]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_5
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_5
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[5]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_5/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[5]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_5/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_a[6]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_6
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_6
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_a[6]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_6
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_6
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[6]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_6/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[6]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_6/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_a[7]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_7
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_7
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_a[7]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_7
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_7
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[7]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_7/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[7]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_7/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_a[8]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_8
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_8
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_a[8]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_8
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_8
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[8]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_8/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[8]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_8/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_a[9]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_9
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_9
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_a[9]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_9
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_9
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[9]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_9/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[9]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_9/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_a[10]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_10
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_10
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_a[10]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_10
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_10
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[10]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_10/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[10]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_10/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_a[11]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_11
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_11
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_a[11]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_11
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_11
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[11]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_11/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[11]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_11/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_a[12]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_12
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_12
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_a[12]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_12
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_12
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[12]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_12/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[12]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_12/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_a[13]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_13
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_13
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_a[13]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_13
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_13
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[13]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_13/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[13]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_13/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_a[14]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_14
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_14
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_a[14]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_14
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_14
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[14]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_14/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[14]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_14/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_a[15]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_15
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_15
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_a[15]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_15
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_15
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[15]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_15/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_a[15]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_a_reg_15/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_b[0]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_0
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_0
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_b[0]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_0
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_0
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[0]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_0/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[0]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_0/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_b[1]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_1
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_1
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_b[1]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_1
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_1
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[1]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_1/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[1]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_1/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_b[2]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_2
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_2
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_b[2]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_2
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_2
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[2]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_2/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[2]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_2/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_b[3]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_3
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_3
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_b[3]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_3
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_3
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[3]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_3/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[3]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_3/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_b[4]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_4
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_4
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_b[4]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_4
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_4
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[4]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_4/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[4]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_4/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_b[5]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_5
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_5
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_b[5]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_5
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_5
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[5]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_5/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[5]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_5/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_b[6]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_6
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_6
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_b[6]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_6
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_6
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[6]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_6/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[6]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_6/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_b[7]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_7
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_7
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_b[7]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_7
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_7
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[7]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_7/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[7]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_7/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_b[8]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_8
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_8
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_b[8]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_8
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_8
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[8]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_8/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[8]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_8/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_b[9]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_9
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_9
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_b[9]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_9
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_9
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[9]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_9/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[9]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_9/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_b[10]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_10
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_10
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_b[10]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_10
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_10
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[10]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_10/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[10]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_10/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_b[11]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_11
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_11
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_b[11]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_11
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_11
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[11]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_11/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[11]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_11/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_b[12]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_12
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_12
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_b[12]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_12
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_12
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[12]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_12/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[12]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_12/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_b[13]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_13
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_13
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_b[13]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_13
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_13
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[13]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_13/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[13]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_13/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_b[14]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_14
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_14
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_b[14]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_14
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_14
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[14]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_14/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[14]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_14/pins_out/QN
::legacy::set_attribute -quiet original_name {{multiplied_xor_result_flopped_b[15]}} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_15
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_15
::legacy::set_attribute -quiet single_bit_orig_name {multiplied_xor_result_flopped_b[15]} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_15
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_15
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[15]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_15/pins_out/Q
::legacy::set_attribute -quiet original_name {multiplied_xor_result_flopped_b[15]/q} /designs/BitAND_16b_flopped/instances_seq/multiplied_xor_result_flopped_b_reg_15/pins_out/QN
::legacy::set_attribute -quiet original_name {{result_unflopped[1][0]}} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_0
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_0
::legacy::set_attribute -quiet single_bit_orig_name {result_unflopped[1][0]} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_0
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_0
::legacy::set_attribute -quiet original_name {result_unflopped[1][0]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_0/pins_out/Q
::legacy::set_attribute -quiet original_name {result_unflopped[1][0]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_0/pins_out/QN
::legacy::set_attribute -quiet original_name {{result_unflopped[1][1]}} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_1
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_1
::legacy::set_attribute -quiet single_bit_orig_name {result_unflopped[1][1]} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_1
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_1
::legacy::set_attribute -quiet original_name {result_unflopped[1][1]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_1/pins_out/Q
::legacy::set_attribute -quiet original_name {result_unflopped[1][1]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_1/pins_out/QN
::legacy::set_attribute -quiet original_name {{result_unflopped[1][2]}} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_2
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_2
::legacy::set_attribute -quiet single_bit_orig_name {result_unflopped[1][2]} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_2
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_2
::legacy::set_attribute -quiet original_name {result_unflopped[1][2]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_2/pins_out/Q
::legacy::set_attribute -quiet original_name {result_unflopped[1][2]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_2/pins_out/QN
::legacy::set_attribute -quiet original_name {{result_unflopped[1][3]}} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_3
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_3
::legacy::set_attribute -quiet single_bit_orig_name {result_unflopped[1][3]} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_3
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_3
::legacy::set_attribute -quiet original_name {result_unflopped[1][3]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_3/pins_out/Q
::legacy::set_attribute -quiet original_name {result_unflopped[1][3]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_3/pins_out/QN
::legacy::set_attribute -quiet original_name {{result_unflopped[1][4]}} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_4
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_4
::legacy::set_attribute -quiet single_bit_orig_name {result_unflopped[1][4]} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_4
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_4
::legacy::set_attribute -quiet original_name {result_unflopped[1][4]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_4/pins_out/Q
::legacy::set_attribute -quiet original_name {result_unflopped[1][4]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_4/pins_out/QN
::legacy::set_attribute -quiet original_name {{result_unflopped[1][5]}} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_5
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_5
::legacy::set_attribute -quiet single_bit_orig_name {result_unflopped[1][5]} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_5
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_5
::legacy::set_attribute -quiet original_name {result_unflopped[1][5]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_5/pins_out/Q
::legacy::set_attribute -quiet original_name {result_unflopped[1][5]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_5/pins_out/QN
::legacy::set_attribute -quiet original_name {{result_unflopped[1][6]}} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_6
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_6
::legacy::set_attribute -quiet single_bit_orig_name {result_unflopped[1][6]} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_6
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_6
::legacy::set_attribute -quiet original_name {result_unflopped[1][6]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_6/pins_out/Q
::legacy::set_attribute -quiet original_name {result_unflopped[1][6]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_6/pins_out/QN
::legacy::set_attribute -quiet original_name {{result_unflopped[1][7]}} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_7
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_7
::legacy::set_attribute -quiet single_bit_orig_name {result_unflopped[1][7]} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_7
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_7
::legacy::set_attribute -quiet original_name {result_unflopped[1][7]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_7/pins_out/Q
::legacy::set_attribute -quiet original_name {result_unflopped[1][7]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_7/pins_out/QN
::legacy::set_attribute -quiet original_name {{result_unflopped[1][8]}} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_8
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_8
::legacy::set_attribute -quiet single_bit_orig_name {result_unflopped[1][8]} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_8
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_8
::legacy::set_attribute -quiet original_name {result_unflopped[1][8]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_8/pins_out/Q
::legacy::set_attribute -quiet original_name {result_unflopped[1][8]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_8/pins_out/QN
::legacy::set_attribute -quiet original_name {{result_unflopped[1][9]}} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_9
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_9
::legacy::set_attribute -quiet single_bit_orig_name {result_unflopped[1][9]} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_9
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_9
::legacy::set_attribute -quiet original_name {result_unflopped[1][9]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_9/pins_out/Q
::legacy::set_attribute -quiet original_name {result_unflopped[1][9]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_9/pins_out/QN
::legacy::set_attribute -quiet original_name {{result_unflopped[1][10]}} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_10
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_10
::legacy::set_attribute -quiet single_bit_orig_name {result_unflopped[1][10]} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_10
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_10
::legacy::set_attribute -quiet original_name {result_unflopped[1][10]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_10/pins_out/Q
::legacy::set_attribute -quiet original_name {result_unflopped[1][10]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_10/pins_out/QN
::legacy::set_attribute -quiet original_name {{result_unflopped[1][11]}} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_11
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_11
::legacy::set_attribute -quiet single_bit_orig_name {result_unflopped[1][11]} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_11
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_11
::legacy::set_attribute -quiet original_name {result_unflopped[1][11]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_11/pins_out/Q
::legacy::set_attribute -quiet original_name {result_unflopped[1][11]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_11/pins_out/QN
::legacy::set_attribute -quiet original_name {{result_unflopped[1][12]}} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_12
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_12
::legacy::set_attribute -quiet single_bit_orig_name {result_unflopped[1][12]} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_12
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_12
::legacy::set_attribute -quiet original_name {result_unflopped[1][12]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_12/pins_out/Q
::legacy::set_attribute -quiet original_name {result_unflopped[1][12]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_12/pins_out/QN
::legacy::set_attribute -quiet original_name {{result_unflopped[1][13]}} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_13
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_13
::legacy::set_attribute -quiet single_bit_orig_name {result_unflopped[1][13]} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_13
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_13
::legacy::set_attribute -quiet original_name {result_unflopped[1][13]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_13/pins_out/Q
::legacy::set_attribute -quiet original_name {result_unflopped[1][13]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_13/pins_out/QN
::legacy::set_attribute -quiet original_name {{result_unflopped[1][14]}} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_14
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_14
::legacy::set_attribute -quiet single_bit_orig_name {result_unflopped[1][14]} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_14
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_14
::legacy::set_attribute -quiet original_name {result_unflopped[1][14]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_14/pins_out/Q
::legacy::set_attribute -quiet original_name {result_unflopped[1][14]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_14/pins_out/QN
::legacy::set_attribute -quiet original_name {{result_unflopped[1][15]}} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_15
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_15
::legacy::set_attribute -quiet single_bit_orig_name {result_unflopped[1][15]} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_15
::legacy::set_attribute -quiet gint_phase_inversion false /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_15
::legacy::set_attribute -quiet original_name {result_unflopped[1][15]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_15/pins_out/Q
::legacy::set_attribute -quiet original_name {result_unflopped[1][15]/q} /designs/BitAND_16b_flopped/instances_seq/result_unflopped_reg_1_15/pins_out/QN
# BEGIN PMBIST SECTION
# END PMBIST SECTION
# BEGIN PHYSICAL ANNOTATION SECTION
# END PHYSICAL ANNOTATION SECTION
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 18.14-s037_1
## flowkit v18.10-p010_1
## Written on 15:50:21 21-Apr 2025
#############################################################
#####   Flow Definitions   ##################################

#############################################################
#####   Step Definitions   ##################################


#############################################################
#####   Attribute Definitions   #############################

if {[is_attribute flow_edit_end_steps -obj_type root]} {set_flowkit_db flow_edit_end_steps {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_flowkit_db flow_edit_start_steps {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_flowkit_db flow_footer_tcl {}}
if {[is_attribute flow_header_tcl -obj_type root]} {set_flowkit_db flow_header_tcl {}}
if {[is_attribute flow_metadata -obj_type root]} {set_flowkit_db flow_metadata {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_flowkit_db flow_setup_config {HUDDLE {!!map {}}}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_flowkit_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_flowkit_db flow_step_check_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_flowkit_db flow_step_end_tcl {}}
if {[is_attribute flow_step_order -obj_type root]} {set_flowkit_db flow_step_order {}}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_flowkit_db flow_summary_tcl {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_flowkit_db flow_template_feature_definition {}}
if {[is_attribute flow_template_type -obj_type root]} {set_flowkit_db flow_template_type {}}
if {[is_attribute flow_template_version -obj_type root]} {set_flowkit_db flow_template_version {}}
if {[is_attribute flow_user_templates -obj_type root]} {set_flowkit_db flow_user_templates {}}


#############################################################
#####   Flow History   ######################################

if {[is_attribute flow_branch -obj_type root]} {set_flowkit_db flow_branch {}}
if {[is_attribute flow_caller_data -obj_type root]} {set_flowkit_db flow_caller_data {}}
if {[is_attribute flow_current -obj_type root]} {set_flowkit_db flow_current {}}
if {[is_attribute flow_hier_path -obj_type root]} {set_flowkit_db flow_hier_path {}}
if {[is_attribute flow_db_directory -obj_type root]} {set_flowkit_db flow_db_directory dbs}
if {[is_attribute flow_exit_when_done -obj_type root]} {set_flowkit_db flow_exit_when_done false}
if {[is_attribute flow_history -obj_type root]} {set_flowkit_db flow_history {}}
if {[is_attribute flow_log_directory -obj_type root]} {set_flowkit_db flow_log_directory logs}
if {[is_attribute flow_mail_on_error -obj_type root]} {set_flowkit_db flow_mail_on_error false}
if {[is_attribute flow_mail_to -obj_type root]} {set_flowkit_db flow_mail_to {}}
if {[is_attribute flow_metrics_file -obj_type root]} {set_flowkit_db flow_metrics_file {}}
if {[is_attribute flow_metrics_snapshot_parent_uuid -obj_type root]} {set_flowkit_db flow_metrics_snapshot_parent_uuid {}}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_flowkit_db flow_metrics_snapshot_uuid 650bb998-ff24-468b-b72b-d53c87633212}
if {[is_attribute flow_overwrite_db -obj_type root]} {set_flowkit_db flow_overwrite_db false}
if {[is_attribute flow_report_directory -obj_type root]} {set_flowkit_db flow_report_directory reports}
if {[is_attribute flow_run_tag -obj_type root]} {set_flowkit_db flow_run_tag {}}
if {[is_attribute flow_schedule -obj_type root]} {set_flowkit_db flow_schedule {}}
if {[is_attribute flow_script -obj_type root]} {set_flowkit_db flow_script {}}
if {[is_attribute flow_starting_db -obj_type root]} {set_flowkit_db flow_starting_db {}}
if {[is_attribute flow_status_file -obj_type root]} {set_flowkit_db flow_status_file {}}
if {[is_attribute flow_step_canonical_current -obj_type root]} {set_flowkit_db flow_step_canonical_current {}}
if {[is_attribute flow_step_current -obj_type root]} {set_flowkit_db flow_step_current {}}
if {[is_attribute flow_step_last -obj_type root]} {set_flowkit_db flow_step_last {}}
if {[is_attribute flow_step_last_msg -obj_type root]} {set_flowkit_db flow_step_last_msg {}}
if {[is_attribute flow_step_last_status -obj_type root]} {set_flowkit_db flow_step_last_status not_run}
if {[is_attribute flow_step_next -obj_type root]} {set_flowkit_db flow_step_next {}}
if {[is_attribute flow_working_directory -obj_type root]} {set_flowkit_db flow_working_directory .}

#############################################################
#####   User Defined Attributes   ###########################

