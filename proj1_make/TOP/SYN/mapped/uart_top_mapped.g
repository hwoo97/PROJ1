######################################################################

# Created by Genus(TM) Synthesis Solution 22.17-s071_1 on Wed Oct 14 13:11:21 KST 2026

# This file contains the Genus script for design:uart_top

######################################################################

set_db -quiet init_lib_search_path {/GPDK045/digital/gsclib045_all_v4.4/gsclib045/timing /GPDK045/digital/giolib045_v3.5/timing /GPDK045/digital/gsclib045_all_v4.4/gsclib045/lef /GPDK045/digital/giolib045_v3.5/lef /GPDK045/digital/gsclib045_all_v4.4/gsclib045_tech/qrc/qx}
set_db -quiet operating_conditions_min PVT_1P1V_0C
set_db -quiet operating_conditions_min_library library:default_emulate_libset_max/fast_vdd1v0
set_db -quiet operating_conditions_library_given true
set_db -quiet design_mode_process 60.0
set_db -quiet phys_assume_met_fill 0.0
set_db -quiet map_placed_for_route_early_global false
set_db -quiet phys_use_invs_extraction true
set_db -quiet phys_route_time_out 120.0
set_db -quiet db_units 2000
set_db -quiet capacitance_per_unit_length_mmmc {}
set_db -quiet resistance_per_unit_length_mmmc {}
set_db -quiet runtime_by_stage {{PBS_Generic-Start 0 21 0.0 17.98704} {to_generic 7 29 7 25} {first_condense 4 33 5 31} {PBS_Generic_Opt-Post 13 34 11.679317000000001 29.666357} {{PBS_Generic-Postgen HBO Optimizations} 0 34 0.0 29.666357} {PBS_TechMap-Start 0 36 0.0 31.636095} {{PBS_TechMap-Premap HBO Optimizations} 0 36 0.0 31.636095} {second_condense 3 39 4 37} {reify 6 45 7 45} {global_incr_map 1 46 0 46} {{PBS_Techmap-Global Mapping} 10 46 9.392880000000002 41.028975} {{PBS_TechMap-Datapath Postmap Operations} 2 48 1.9834109999999967 43.012386} {{PBS_TechMap-Postmap HBO Optimizations} 0 48 -0.014389000000001317 42.997997} {{PBS_TechMap-Postmap Clock Gating} 0 48 0.0 42.997997} {{PBS_TechMap-Postmap Cleanup} 0 48 -0.014824999999994759 42.983172} {PBS_Techmap-Post_MBCI 0 48 0.0 42.983172} {incr_opt 2 52 2 51} }
set_db -quiet timing_adjust_tns_of_complex_flops false
set_db -quiet hdl_array_naming_style %s_%d
set_db -quiet tinfo_tstamp_file .rs_hah015.tstamp
set_db -quiet metric_enable true
set_db -quiet auto_ungroup none
set_db -quiet max_cpus_per_server 2
set_db -quiet syn_generic_effort high
set_db -quiet use_area_from_lef true
set_db -quiet uniquify_naming_style uart_top_%s_%d
set_db -quiet optimize_merge_flops false
set_db -quiet optimize_merge_latches false
set_db -quiet phys_use_segment_parasitics true
set_db -quiet probabilistic_extraction true
set_db -quiet ple_correlation_factors {1.9000 2.0000}
set_db -quiet maximum_interval_of_vias inf
set_db -quiet layer_aware_buffer true
set_db -quiet ple_mode global
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/ANTENNA .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY1X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY1X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY2X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY2X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY3X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY3X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY4X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY4X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/HOLDX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TIEHI .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TIELO .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX12 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX16 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX20 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX3 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX6 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX12 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX16 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX20 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX3 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX6 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/ANTENNA .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY1X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY1X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY2X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY2X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY3X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY3X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY4X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY4X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/HOLDX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TIEHI .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TIELO .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX12 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX16 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX20 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX3 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX6 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX12 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX16 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX20 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX3 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX6 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATXL .avoid true
set_db -quiet operating_conditions operating_condition:default_emulate_libset_max/slow_vdd1v0/PVT_0P9V_125C
set_db -quiet wireload_selection none
set_db -quiet operating_condition:default_emulate_libset_max/fast_vdd1v0/PVT_1P1V_0C .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/fast_vdd1v0/_nominal_ .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/slow_vdd1v0/PVT_0P9V_125C .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/slow_vdd1v0/_nominal_ .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/giolib045/slow .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/giolib045/_nominal_ .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/fast_vdd1v0/PVT_1P1V_0C .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/fast_vdd1v0/_nominal_ .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/slow_vdd1v0/PVT_0P9V_125C .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/slow_vdd1v0/_nominal_ .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/giolib045/slow .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/giolib045/_nominal_ .tree_type balanced_tree
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name MAIN_CLOCK -domain domain_1 -period 800.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -remove -design design:uart_top port:uart_top/pclk
set_db -quiet clock:uart_top/MAIN_CLOCK .slew {100.0 100.0 100.0 100.0}
set_db -quiet clock:uart_top/MAIN_CLOCK .clock_network_late_latency {200.0 200.0 200.0 200.0}
set_db -quiet clock:uart_top/MAIN_CLOCK .clock_source_late_latency {200.0 200.0 200.0 200.0}
set_db -quiet clock:uart_top/MAIN_CLOCK .clock_setup_uncertainty {100.0 100.0}
define_cost_group -design design:uart_top -name MAIN_CLOCK
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del port:uart_top/presetn
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_1_1 {{port:uart_top/paddr[7]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_2_1 {{port:uart_top/paddr[6]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_3_1 {{port:uart_top/paddr[5]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_4_1 {{port:uart_top/paddr[4]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_5_1 {{port:uart_top/paddr[3]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_6_1 {{port:uart_top/paddr[2]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_7_1 {{port:uart_top/paddr[1]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_8_1 {{port:uart_top/paddr[0]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_9_1 port:uart_top/psel
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_10_1 port:uart_top/penable
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_11_1 port:uart_top/pwrite
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_12_1 {{port:uart_top/pwdata[31]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_13_1 {{port:uart_top/pwdata[30]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_14_1 {{port:uart_top/pwdata[29]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_15_1 {{port:uart_top/pwdata[28]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_16_1 {{port:uart_top/pwdata[27]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_17_1 {{port:uart_top/pwdata[26]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_18_1 {{port:uart_top/pwdata[25]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_19_1 {{port:uart_top/pwdata[24]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_20_1 {{port:uart_top/pwdata[23]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_21_1 {{port:uart_top/pwdata[22]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_22_1 {{port:uart_top/pwdata[21]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_23_1 {{port:uart_top/pwdata[20]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_24_1 {{port:uart_top/pwdata[19]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_25_1 {{port:uart_top/pwdata[18]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_26_1 {{port:uart_top/pwdata[17]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_27_1 {{port:uart_top/pwdata[16]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_28_1 {{port:uart_top/pwdata[15]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_29_1 {{port:uart_top/pwdata[14]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_30_1 {{port:uart_top/pwdata[13]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_31_1 {{port:uart_top/pwdata[12]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_32_1 {{port:uart_top/pwdata[11]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_33_1 {{port:uart_top/pwdata[10]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_34_1 {{port:uart_top/pwdata[9]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_35_1 {{port:uart_top/pwdata[8]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_36_1 {{port:uart_top/pwdata[7]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_37_1 {{port:uart_top/pwdata[6]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_38_1 {{port:uart_top/pwdata[5]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_39_1 {{port:uart_top/pwdata[4]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_40_1 {{port:uart_top/pwdata[3]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_41_1 {{port:uart_top/pwdata[2]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_42_1 {{port:uart_top/pwdata[1]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_43_1 {{port:uart_top/pwdata[0]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_44_1 port:uart_top/rxd
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_45_1 port:uart_top/presetn
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_46_1 {{port:uart_top/paddr[7]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_47_1 {{port:uart_top/paddr[6]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_48_1 {{port:uart_top/paddr[5]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_49_1 {{port:uart_top/paddr[4]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_50_1 {{port:uart_top/paddr[3]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_51_1 {{port:uart_top/paddr[2]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_52_1 {{port:uart_top/paddr[1]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_53_1 {{port:uart_top/paddr[0]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_54_1 port:uart_top/psel
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_55_1 port:uart_top/penable
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_56_1 port:uart_top/pwrite
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_57_1 {{port:uart_top/pwdata[31]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_58_1 {{port:uart_top/pwdata[30]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_59_1 {{port:uart_top/pwdata[29]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_60_1 {{port:uart_top/pwdata[28]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_61_1 {{port:uart_top/pwdata[27]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_62_1 {{port:uart_top/pwdata[26]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_63_1 {{port:uart_top/pwdata[25]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_64_1 {{port:uart_top/pwdata[24]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_65_1 {{port:uart_top/pwdata[23]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_66_1 {{port:uart_top/pwdata[22]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_67_1 {{port:uart_top/pwdata[21]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_68_1 {{port:uart_top/pwdata[20]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_69_1 {{port:uart_top/pwdata[19]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_70_1 {{port:uart_top/pwdata[18]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_71_1 {{port:uart_top/pwdata[17]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_72_1 {{port:uart_top/pwdata[16]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_73_1 {{port:uart_top/pwdata[15]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_74_1 {{port:uart_top/pwdata[14]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_75_1 {{port:uart_top/pwdata[13]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_76_1 {{port:uart_top/pwdata[12]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_77_1 {{port:uart_top/pwdata[11]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_78_1 {{port:uart_top/pwdata[10]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_79_1 {{port:uart_top/pwdata[9]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_80_1 {{port:uart_top/pwdata[8]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_81_1 {{port:uart_top/pwdata[7]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_82_1 {{port:uart_top/pwdata[6]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_83_1 {{port:uart_top/pwdata[5]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_84_1 {{port:uart_top/pwdata[4]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_85_1 {{port:uart_top/pwdata[3]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_86_1 {{port:uart_top/pwdata[2]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_87_1 {{port:uart_top/pwdata[1]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_88_1 {{port:uart_top/pwdata[0]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_89_1 port:uart_top/rxd
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del {{port:uart_top/prdata[31]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_89_1 {{port:uart_top/prdata[30]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_90_1 {{port:uart_top/prdata[29]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_91_1 {{port:uart_top/prdata[28]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_92_1 {{port:uart_top/prdata[27]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_93_1 {{port:uart_top/prdata[26]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_94_1 {{port:uart_top/prdata[25]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_95_1 {{port:uart_top/prdata[24]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_96_1 {{port:uart_top/prdata[23]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_97_1 {{port:uart_top/prdata[22]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_98_1 {{port:uart_top/prdata[21]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_99_1 {{port:uart_top/prdata[20]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_100_1 {{port:uart_top/prdata[19]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_101_1 {{port:uart_top/prdata[18]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_102_1 {{port:uart_top/prdata[17]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_103_1 {{port:uart_top/prdata[16]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_104_1 {{port:uart_top/prdata[15]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_105_1 {{port:uart_top/prdata[14]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_106_1 {{port:uart_top/prdata[13]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_107_1 {{port:uart_top/prdata[12]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_108_1 {{port:uart_top/prdata[11]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_109_1 {{port:uart_top/prdata[10]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_110_1 {{port:uart_top/prdata[9]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_111_1 {{port:uart_top/prdata[8]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_112_1 {{port:uart_top/prdata[7]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_113_1 {{port:uart_top/prdata[6]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_114_1 {{port:uart_top/prdata[5]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_115_1 {{port:uart_top/prdata[4]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_116_1 {{port:uart_top/prdata[3]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_117_1 {{port:uart_top/prdata[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_118_1 {{port:uart_top/prdata[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_119_1 {{port:uart_top/prdata[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_120_1 port:uart_top/pready
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_121_1 port:uart_top/pslverr
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_122_1 port:uart_top/txd
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_123_1 port:uart_top/tx_busy
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_124_1 port:uart_top/rx_valid
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_125_1 port:uart_top/rx_error
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_126_1 port:uart_top/irq
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_127_1 {{port:uart_top/prdata[31]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_128_1 {{port:uart_top/prdata[30]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_129_1 {{port:uart_top/prdata[29]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_130_1 {{port:uart_top/prdata[28]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_131_1 {{port:uart_top/prdata[27]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_132_1 {{port:uart_top/prdata[26]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_133_1 {{port:uart_top/prdata[25]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_134_1 {{port:uart_top/prdata[24]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_135_1 {{port:uart_top/prdata[23]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_136_1 {{port:uart_top/prdata[22]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_137_1 {{port:uart_top/prdata[21]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_138_1 {{port:uart_top/prdata[20]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_139_1 {{port:uart_top/prdata[19]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_140_1 {{port:uart_top/prdata[18]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_141_1 {{port:uart_top/prdata[17]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_142_1 {{port:uart_top/prdata[16]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_143_1 {{port:uart_top/prdata[15]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_144_1 {{port:uart_top/prdata[14]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_145_1 {{port:uart_top/prdata[13]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_146_1 {{port:uart_top/prdata[12]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_147_1 {{port:uart_top/prdata[11]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_148_1 {{port:uart_top/prdata[10]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_149_1 {{port:uart_top/prdata[9]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_150_1 {{port:uart_top/prdata[8]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_151_1 {{port:uart_top/prdata[7]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_152_1 {{port:uart_top/prdata[6]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_153_1 {{port:uart_top/prdata[5]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_154_1 {{port:uart_top/prdata[4]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_155_1 {{port:uart_top/prdata[3]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_156_1 {{port:uart_top/prdata[2]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_157_1 {{port:uart_top/prdata[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_158_1 {{port:uart_top/prdata[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_159_1 port:uart_top/pready
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_160_1 port:uart_top/pslverr
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_161_1 port:uart_top/txd
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_162_1 port:uart_top/tx_busy
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_163_1 port:uart_top/rx_valid
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_164_1 port:uart_top/rx_error
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_165_1 port:uart_top/irq
path_group -paths [specify_paths -lenient -to clock:uart_top/MAIN_CLOCK]  -name MAIN_CLOCK -group cost_group:uart_top/MAIN_CLOCK -user_priority -1047552
path_disable -paths [specify_paths -lenient -from {port:uart_top/rxd port:uart_top/presetn}]  -name dis_1 -user_priority -770048
path_disable -paths [specify_paths -lenient -to port:uart_top/txd]  -name dis_2 -user_priority -761856
# BEGIN DFT SECTION
set_db -quiet dft_scan_style muxed_scan
set_db -quiet dft_scanbit_waveform_analysis false
# END DFT SECTION
set_db -quiet design:uart_top .seq_reason_deleted_internal {}
set_db -quiet design:uart_top .qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 34124} {cell_count 1187} {utilization  0.00} {runtime 7 29 7 25} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 34003} {cell_count 1373} {utilization  0.00} {runtime 4 33 5 31} }{second_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 33983} {cell_count 1361} {utilization  0.00} {runtime 3 39 4 37} }{reify {wns 38} {tns 0} {vep 0} {area 32057} {cell_count 928} {utilization  0.00} {runtime 6 45 7 45} }{global_incr_map {wns 24} {tns 0} {vep 0} {area 31847} {cell_count 872} {utilization  0.00} {runtime 1 46 0 46} }{incr_opt {wns 214748365} {tns 0} {vep 0} {area 31803} {cell_count 834} {utilization  0.00} {runtime 2 52 2 51} }}
set_db -quiet design:uart_top .seq_mbci_coverage 0.0
set_db -quiet design:uart_top .hdl_filelist {{default -v2001 {SYNTHESIS} {../RTL/baud_gen.v ../RTL/sync_fifo.v ../RTL/uart_rx.v ../RTL/uart_tx.v ../RTL/uart_top.v} {../RTL} {}}}
set_db -quiet design:uart_top .verification_directory fv/uart_top
set_db -quiet port:uart_top/pclk .is_ideal_network true
set_db -quiet port:uart_top/pclk .original_name pclk
set_db -quiet port:uart_top/pclk .ideal_network true
set_db -quiet port:uart_top/presetn .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet port:uart_top/presetn .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet port:uart_top/presetn .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet port:uart_top/presetn .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet port:uart_top/presetn .is_ideal_network true
set_db -quiet port:uart_top/presetn .original_name presetn
set_db -quiet port:uart_top/presetn .ideal_network true
set_db -quiet {port:uart_top/paddr[7]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[7]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[7]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[7]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[7]} .original_name {paddr[7]}
set_db -quiet {port:uart_top/paddr[6]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[6]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[6]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[6]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[6]} .original_name {paddr[6]}
set_db -quiet {port:uart_top/paddr[5]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[5]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[5]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[5]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[5]} .original_name {paddr[5]}
set_db -quiet {port:uart_top/paddr[4]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[4]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[4]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[4]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[4]} .original_name {paddr[4]}
set_db -quiet {port:uart_top/paddr[3]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[3]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[3]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[3]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[3]} .original_name {paddr[3]}
set_db -quiet {port:uart_top/paddr[2]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[2]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[2]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[2]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[2]} .original_name {paddr[2]}
set_db -quiet {port:uart_top/paddr[1]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[1]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[1]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[1]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[1]} .original_name {paddr[1]}
set_db -quiet {port:uart_top/paddr[0]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[0]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[0]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[0]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/paddr[0]} .original_name {paddr[0]}
set_db -quiet port:uart_top/psel .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet port:uart_top/psel .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet port:uart_top/psel .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet port:uart_top/psel .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet port:uart_top/psel .original_name psel
set_db -quiet port:uart_top/penable .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet port:uart_top/penable .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet port:uart_top/penable .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet port:uart_top/penable .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet port:uart_top/penable .original_name penable
set_db -quiet port:uart_top/pwrite .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet port:uart_top/pwrite .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet port:uart_top/pwrite .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet port:uart_top/pwrite .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet port:uart_top/pwrite .original_name pwrite
set_db -quiet {port:uart_top/pwdata[31]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[31]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[31]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[31]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[31]} .original_name {pwdata[31]}
set_db -quiet {port:uart_top/pwdata[30]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[30]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[30]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[30]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[30]} .original_name {pwdata[30]}
set_db -quiet {port:uart_top/pwdata[29]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[29]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[29]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[29]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[29]} .original_name {pwdata[29]}
set_db -quiet {port:uart_top/pwdata[28]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[28]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[28]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[28]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[28]} .original_name {pwdata[28]}
set_db -quiet {port:uart_top/pwdata[27]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[27]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[27]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[27]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[27]} .original_name {pwdata[27]}
set_db -quiet {port:uart_top/pwdata[26]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[26]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[26]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[26]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[26]} .original_name {pwdata[26]}
set_db -quiet {port:uart_top/pwdata[25]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[25]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[25]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[25]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[25]} .original_name {pwdata[25]}
set_db -quiet {port:uart_top/pwdata[24]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[24]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[24]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[24]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[24]} .original_name {pwdata[24]}
set_db -quiet {port:uart_top/pwdata[23]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[23]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[23]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[23]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[23]} .original_name {pwdata[23]}
set_db -quiet {port:uart_top/pwdata[22]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[22]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[22]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[22]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[22]} .original_name {pwdata[22]}
set_db -quiet {port:uart_top/pwdata[21]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[21]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[21]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[21]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[21]} .original_name {pwdata[21]}
set_db -quiet {port:uart_top/pwdata[20]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[20]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[20]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[20]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[20]} .original_name {pwdata[20]}
set_db -quiet {port:uart_top/pwdata[19]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[19]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[19]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[19]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[19]} .original_name {pwdata[19]}
set_db -quiet {port:uart_top/pwdata[18]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[18]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[18]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[18]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[18]} .original_name {pwdata[18]}
set_db -quiet {port:uart_top/pwdata[17]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[17]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[17]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[17]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[17]} .original_name {pwdata[17]}
set_db -quiet {port:uart_top/pwdata[16]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[16]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[16]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[16]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[16]} .original_name {pwdata[16]}
set_db -quiet {port:uart_top/pwdata[15]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[15]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[15]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[15]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[15]} .original_name {pwdata[15]}
set_db -quiet {port:uart_top/pwdata[14]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[14]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[14]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[14]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[14]} .original_name {pwdata[14]}
set_db -quiet {port:uart_top/pwdata[13]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[13]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[13]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[13]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[13]} .original_name {pwdata[13]}
set_db -quiet {port:uart_top/pwdata[12]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[12]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[12]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[12]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[12]} .original_name {pwdata[12]}
set_db -quiet {port:uart_top/pwdata[11]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[11]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[11]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[11]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[11]} .original_name {pwdata[11]}
set_db -quiet {port:uart_top/pwdata[10]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[10]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[10]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[10]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[10]} .original_name {pwdata[10]}
set_db -quiet {port:uart_top/pwdata[9]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[9]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[9]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[9]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[9]} .original_name {pwdata[9]}
set_db -quiet {port:uart_top/pwdata[8]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[8]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[8]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[8]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[8]} .original_name {pwdata[8]}
set_db -quiet {port:uart_top/pwdata[7]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[7]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[7]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[7]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[7]} .original_name {pwdata[7]}
set_db -quiet {port:uart_top/pwdata[6]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[6]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[6]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[6]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[6]} .original_name {pwdata[6]}
set_db -quiet {port:uart_top/pwdata[5]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[5]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[5]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[5]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[5]} .original_name {pwdata[5]}
set_db -quiet {port:uart_top/pwdata[4]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[4]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[4]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[4]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[4]} .original_name {pwdata[4]}
set_db -quiet {port:uart_top/pwdata[3]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[3]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[3]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[3]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[3]} .original_name {pwdata[3]}
set_db -quiet {port:uart_top/pwdata[2]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[2]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[2]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[2]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[2]} .original_name {pwdata[2]}
set_db -quiet {port:uart_top/pwdata[1]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[1]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[1]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[1]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[1]} .original_name {pwdata[1]}
set_db -quiet {port:uart_top/pwdata[0]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[0]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[0]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[0]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/fast_vdd1v0/DFFHQX1/Q
set_db -quiet {port:uart_top/pwdata[0]} .original_name {pwdata[0]}
set_db -quiet port:uart_top/rxd .driver_pin_rise_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet port:uart_top/rxd .driver_pin_fall_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet port:uart_top/rxd .driver_pin_rise_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet port:uart_top/rxd .driver_pin_fall_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet port:uart_top/rxd .original_name rxd
set_db -quiet {port:uart_top/prdata[31]} .original_name {prdata[31]}
set_db -quiet {port:uart_top/prdata[30]} .original_name {prdata[30]}
set_db -quiet {port:uart_top/prdata[29]} .original_name {prdata[29]}
set_db -quiet {port:uart_top/prdata[28]} .original_name {prdata[28]}
set_db -quiet {port:uart_top/prdata[27]} .original_name {prdata[27]}
set_db -quiet {port:uart_top/prdata[26]} .original_name {prdata[26]}
set_db -quiet {port:uart_top/prdata[25]} .original_name {prdata[25]}
set_db -quiet {port:uart_top/prdata[24]} .original_name {prdata[24]}
set_db -quiet {port:uart_top/prdata[23]} .original_name {prdata[23]}
set_db -quiet {port:uart_top/prdata[22]} .original_name {prdata[22]}
set_db -quiet {port:uart_top/prdata[21]} .original_name {prdata[21]}
set_db -quiet {port:uart_top/prdata[20]} .original_name {prdata[20]}
set_db -quiet {port:uart_top/prdata[19]} .original_name {prdata[19]}
set_db -quiet {port:uart_top/prdata[18]} .original_name {prdata[18]}
set_db -quiet {port:uart_top/prdata[17]} .original_name {prdata[17]}
set_db -quiet {port:uart_top/prdata[16]} .original_name {prdata[16]}
set_db -quiet {port:uart_top/prdata[15]} .original_name {prdata[15]}
set_db -quiet {port:uart_top/prdata[14]} .original_name {prdata[14]}
set_db -quiet {port:uart_top/prdata[13]} .original_name {prdata[13]}
set_db -quiet {port:uart_top/prdata[12]} .original_name {prdata[12]}
set_db -quiet {port:uart_top/prdata[11]} .original_name {prdata[11]}
set_db -quiet {port:uart_top/prdata[10]} .original_name {prdata[10]}
set_db -quiet {port:uart_top/prdata[9]} .original_name {prdata[9]}
set_db -quiet {port:uart_top/prdata[8]} .original_name {prdata[8]}
set_db -quiet {port:uart_top/prdata[7]} .original_name {prdata[7]}
set_db -quiet {port:uart_top/prdata[6]} .original_name {prdata[6]}
set_db -quiet {port:uart_top/prdata[5]} .original_name {prdata[5]}
set_db -quiet {port:uart_top/prdata[4]} .original_name {prdata[4]}
set_db -quiet {port:uart_top/prdata[3]} .original_name {prdata[3]}
set_db -quiet {port:uart_top/prdata[2]} .original_name {prdata[2]}
set_db -quiet {port:uart_top/prdata[1]} .original_name {prdata[1]}
set_db -quiet {port:uart_top/prdata[0]} .original_name {prdata[0]}
set_db -quiet port:uart_top/pready .original_name pready
set_db -quiet port:uart_top/pslverr .original_name pslverr
set_db -quiet port:uart_top/txd .external_pin_cap_min 3.0
set_db -quiet port:uart_top/txd .external_capacitance_max {3.0 3.0}
set_db -quiet port:uart_top/txd .external_capacitance_min 3.0
set_db -quiet port:uart_top/txd .original_name txd
set_db -quiet port:uart_top/txd .external_pin_cap {3.0 3.0}
set_db -quiet port:uart_top/tx_busy .original_name tx_busy
set_db -quiet port:uart_top/rx_valid .original_name rx_valid
set_db -quiet port:uart_top/rx_error .original_name rx_error
set_db -quiet port:uart_top/irq .original_name irq
set_db -quiet inst:uart_top/pad1 .dont_touch_reason set_dont_touch
set_db -quiet inst:uart_top/pad1 .dont_touch_file 0
set_db -quiet inst:uart_top/pad1 .dont_touch true
set_db -quiet inst:uart_top/pad1 .preserve true
set_db -quiet inst:uart_top/pad2 .dont_touch_reason set_dont_touch
set_db -quiet inst:uart_top/pad2 .dont_touch_file 0
set_db -quiet inst:uart_top/pad2 .dont_touch true
set_db -quiet inst:uart_top/pad2 .preserve true
set_db -quiet module:uart_top/baud_gen_DIV_WIDTH16 .hdl_filelist {{default -v2001 {SYNTHESIS} {../RTL/baud_gen.v} {../RTL} {}}}
set_db -quiet module:uart_top/equal_unsigned .allow_mux_opto false
set_db -quiet hinst:uart_top/u_baud_gen/eq_39_30 .rtlop_info {{} 0 0 0 3 0 63 0 2 1 1 0}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_15 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_15 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_15 .original_name {{u_baud_gen/div_cnt[15]}}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_15 .single_bit_orig_name {u_baud_gen/div_cnt[15]}
set_db -quiet pin:uart_top/u_baud_gen/div_cnt_reg_15/Q .original_name {u_baud_gen/div_cnt[15]/q}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_14 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_14 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_14 .original_name {{u_baud_gen/div_cnt[14]}}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_14 .single_bit_orig_name {u_baud_gen/div_cnt[14]}
set_db -quiet pin:uart_top/u_baud_gen/div_cnt_reg_14/Q .original_name {u_baud_gen/div_cnt[14]/q}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_13 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_13 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_13 .original_name {{u_baud_gen/div_cnt[13]}}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_13 .single_bit_orig_name {u_baud_gen/div_cnt[13]}
set_db -quiet pin:uart_top/u_baud_gen/div_cnt_reg_13/Q .original_name {u_baud_gen/div_cnt[13]/q}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_12 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_12 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_12 .original_name {{u_baud_gen/div_cnt[12]}}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_12 .single_bit_orig_name {u_baud_gen/div_cnt[12]}
set_db -quiet pin:uart_top/u_baud_gen/div_cnt_reg_12/Q .original_name {u_baud_gen/div_cnt[12]/q}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_11 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_11 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_11 .original_name {{u_baud_gen/div_cnt[11]}}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_11 .single_bit_orig_name {u_baud_gen/div_cnt[11]}
set_db -quiet pin:uart_top/u_baud_gen/div_cnt_reg_11/Q .original_name {u_baud_gen/div_cnt[11]/q}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_10 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_10 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_10 .original_name {{u_baud_gen/div_cnt[10]}}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_10 .single_bit_orig_name {u_baud_gen/div_cnt[10]}
set_db -quiet pin:uart_top/u_baud_gen/div_cnt_reg_10/Q .original_name {u_baud_gen/div_cnt[10]/q}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_9 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_9 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_9 .original_name {{u_baud_gen/div_cnt[9]}}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_9 .single_bit_orig_name {u_baud_gen/div_cnt[9]}
set_db -quiet pin:uart_top/u_baud_gen/div_cnt_reg_9/Q .original_name {u_baud_gen/div_cnt[9]/q}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_8 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_8 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_8 .original_name {{u_baud_gen/div_cnt[8]}}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_8 .single_bit_orig_name {u_baud_gen/div_cnt[8]}
set_db -quiet pin:uart_top/u_baud_gen/div_cnt_reg_8/Q .original_name {u_baud_gen/div_cnt[8]/q}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_7 .original_name {{u_baud_gen/div_cnt[7]}}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_7 .single_bit_orig_name {u_baud_gen/div_cnt[7]}
set_db -quiet pin:uart_top/u_baud_gen/div_cnt_reg_7/Q .original_name {u_baud_gen/div_cnt[7]/q}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_6 .original_name {{u_baud_gen/div_cnt[6]}}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_6 .single_bit_orig_name {u_baud_gen/div_cnt[6]}
set_db -quiet pin:uart_top/u_baud_gen/div_cnt_reg_6/Q .original_name {u_baud_gen/div_cnt[6]/q}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_5 .original_name {{u_baud_gen/div_cnt[5]}}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_5 .single_bit_orig_name {u_baud_gen/div_cnt[5]}
set_db -quiet pin:uart_top/u_baud_gen/div_cnt_reg_5/Q .original_name {u_baud_gen/div_cnt[5]/q}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_4 .original_name {{u_baud_gen/div_cnt[4]}}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_4 .single_bit_orig_name {u_baud_gen/div_cnt[4]}
set_db -quiet pin:uart_top/u_baud_gen/div_cnt_reg_4/Q .original_name {u_baud_gen/div_cnt[4]/q}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_3 .original_name {{u_baud_gen/div_cnt[3]}}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_3 .single_bit_orig_name {u_baud_gen/div_cnt[3]}
set_db -quiet pin:uart_top/u_baud_gen/div_cnt_reg_3/Q .original_name {u_baud_gen/div_cnt[3]/q}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_2 .original_name {{u_baud_gen/div_cnt[2]}}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_2 .single_bit_orig_name {u_baud_gen/div_cnt[2]}
set_db -quiet pin:uart_top/u_baud_gen/div_cnt_reg_2/Q .original_name {u_baud_gen/div_cnt[2]/q}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_1 .original_name {{u_baud_gen/div_cnt[1]}}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_1 .single_bit_orig_name {u_baud_gen/div_cnt[1]}
set_db -quiet pin:uart_top/u_baud_gen/div_cnt_reg_1/Q .original_name {u_baud_gen/div_cnt[1]/q}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_0 .original_name {{u_baud_gen/div_cnt[0]}}
set_db -quiet inst:uart_top/u_baud_gen/div_cnt_reg_0 .single_bit_orig_name {u_baud_gen/div_cnt[0]}
set_db -quiet pin:uart_top/u_baud_gen/div_cnt_reg_0/Q .original_name {u_baud_gen/div_cnt[0]/q}
set_db -quiet inst:uart_top/u_baud_gen/baud_tick_x16_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_baud_gen/baud_tick_x16_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_baud_gen/baud_tick_x16_reg .original_name u_baud_gen/baud_tick_x16
set_db -quiet inst:uart_top/u_baud_gen/baud_tick_x16_reg .single_bit_orig_name u_baud_gen/baud_tick_x16
set_db -quiet pin:uart_top/u_baud_gen/baud_tick_x16_reg/Q .original_name u_baud_gen/baud_tick_x16/q
set_db -quiet module:uart_top/uart_top_sync_fifo_WIDTH8_DEPTH8_ADDR_WIDTH3_1 .hdl_filelist {{default -v2001 {SYNTHESIS} {../RTL/sync_fifo.v} {../RTL} {}}}
set_db -quiet inst:uart_top/u_rx_fifo/cnt_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/cnt_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/cnt_reg_0 .original_name {{u_rx_fifo/cnt[0]}}
set_db -quiet inst:uart_top/u_rx_fifo/cnt_reg_0 .single_bit_orig_name {u_rx_fifo/cnt[0]}
set_db -quiet pin:uart_top/u_rx_fifo/cnt_reg_0/Q .original_name {u_rx_fifo/cnt[0]/q}
set_db -quiet inst:uart_top/u_rx_fifo/cnt_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/cnt_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/cnt_reg_1 .original_name {{u_rx_fifo/cnt[1]}}
set_db -quiet inst:uart_top/u_rx_fifo/cnt_reg_1 .single_bit_orig_name {u_rx_fifo/cnt[1]}
set_db -quiet pin:uart_top/u_rx_fifo/cnt_reg_1/Q .original_name {u_rx_fifo/cnt[1]/q}
set_db -quiet inst:uart_top/u_rx_fifo/cnt_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/cnt_reg_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/cnt_reg_3 .original_name {{u_rx_fifo/cnt[3]}}
set_db -quiet inst:uart_top/u_rx_fifo/cnt_reg_3 .single_bit_orig_name {u_rx_fifo/cnt[3]}
set_db -quiet pin:uart_top/u_rx_fifo/cnt_reg_3/Q .original_name {u_rx_fifo/cnt[3]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_0 .original_name {{u_rx_fifo/mem[0][0]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_0 .single_bit_orig_name {u_rx_fifo/mem[0][0]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_0_0/Q .original_name {u_rx_fifo/mem[0][0]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_1 .original_name {{u_rx_fifo/mem[0][1]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_1 .single_bit_orig_name {u_rx_fifo/mem[0][1]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_0_1/Q .original_name {u_rx_fifo/mem[0][1]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_2 .original_name {{u_rx_fifo/mem[0][2]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_2 .single_bit_orig_name {u_rx_fifo/mem[0][2]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_0_2/Q .original_name {u_rx_fifo/mem[0][2]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_3 .original_name {{u_rx_fifo/mem[0][3]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_3 .single_bit_orig_name {u_rx_fifo/mem[0][3]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_0_3/Q .original_name {u_rx_fifo/mem[0][3]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_4 .original_name {{u_rx_fifo/mem[0][4]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_4 .single_bit_orig_name {u_rx_fifo/mem[0][4]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_0_4/Q .original_name {u_rx_fifo/mem[0][4]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_5 .original_name {{u_rx_fifo/mem[0][5]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_5 .single_bit_orig_name {u_rx_fifo/mem[0][5]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_0_5/Q .original_name {u_rx_fifo/mem[0][5]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_6 .original_name {{u_rx_fifo/mem[0][6]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_6 .single_bit_orig_name {u_rx_fifo/mem[0][6]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_0_6/Q .original_name {u_rx_fifo/mem[0][6]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_7 .original_name {{u_rx_fifo/mem[0][7]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_0_7 .single_bit_orig_name {u_rx_fifo/mem[0][7]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_0_7/Q .original_name {u_rx_fifo/mem[0][7]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_0 .original_name {{u_rx_fifo/mem[1][0]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_0 .single_bit_orig_name {u_rx_fifo/mem[1][0]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_1_0/Q .original_name {u_rx_fifo/mem[1][0]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_1 .original_name {{u_rx_fifo/mem[1][1]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_1 .single_bit_orig_name {u_rx_fifo/mem[1][1]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_1_1/Q .original_name {u_rx_fifo/mem[1][1]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_2 .original_name {{u_rx_fifo/mem[1][2]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_2 .single_bit_orig_name {u_rx_fifo/mem[1][2]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_1_2/Q .original_name {u_rx_fifo/mem[1][2]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_3 .original_name {{u_rx_fifo/mem[1][3]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_3 .single_bit_orig_name {u_rx_fifo/mem[1][3]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_1_3/Q .original_name {u_rx_fifo/mem[1][3]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_4 .original_name {{u_rx_fifo/mem[1][4]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_4 .single_bit_orig_name {u_rx_fifo/mem[1][4]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_1_4/Q .original_name {u_rx_fifo/mem[1][4]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_5 .original_name {{u_rx_fifo/mem[1][5]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_5 .single_bit_orig_name {u_rx_fifo/mem[1][5]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_1_5/Q .original_name {u_rx_fifo/mem[1][5]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_6 .original_name {{u_rx_fifo/mem[1][6]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_6 .single_bit_orig_name {u_rx_fifo/mem[1][6]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_1_6/Q .original_name {u_rx_fifo/mem[1][6]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_7 .original_name {{u_rx_fifo/mem[1][7]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_1_7 .single_bit_orig_name {u_rx_fifo/mem[1][7]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_1_7/Q .original_name {u_rx_fifo/mem[1][7]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_0 .original_name {{u_rx_fifo/mem[2][0]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_0 .single_bit_orig_name {u_rx_fifo/mem[2][0]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_2_0/Q .original_name {u_rx_fifo/mem[2][0]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_1 .original_name {{u_rx_fifo/mem[2][1]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_1 .single_bit_orig_name {u_rx_fifo/mem[2][1]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_2_1/Q .original_name {u_rx_fifo/mem[2][1]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_2 .original_name {{u_rx_fifo/mem[2][2]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_2 .single_bit_orig_name {u_rx_fifo/mem[2][2]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_2_2/Q .original_name {u_rx_fifo/mem[2][2]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_3 .original_name {{u_rx_fifo/mem[2][3]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_3 .single_bit_orig_name {u_rx_fifo/mem[2][3]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_2_3/Q .original_name {u_rx_fifo/mem[2][3]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_4 .original_name {{u_rx_fifo/mem[2][4]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_4 .single_bit_orig_name {u_rx_fifo/mem[2][4]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_2_4/Q .original_name {u_rx_fifo/mem[2][4]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_5 .original_name {{u_rx_fifo/mem[2][5]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_5 .single_bit_orig_name {u_rx_fifo/mem[2][5]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_2_5/Q .original_name {u_rx_fifo/mem[2][5]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_6 .original_name {{u_rx_fifo/mem[2][6]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_6 .single_bit_orig_name {u_rx_fifo/mem[2][6]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_2_6/Q .original_name {u_rx_fifo/mem[2][6]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_7 .original_name {{u_rx_fifo/mem[2][7]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_2_7 .single_bit_orig_name {u_rx_fifo/mem[2][7]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_2_7/Q .original_name {u_rx_fifo/mem[2][7]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_0 .original_name {{u_rx_fifo/mem[3][0]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_0 .single_bit_orig_name {u_rx_fifo/mem[3][0]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_3_0/Q .original_name {u_rx_fifo/mem[3][0]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_1 .original_name {{u_rx_fifo/mem[3][1]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_1 .single_bit_orig_name {u_rx_fifo/mem[3][1]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_3_1/Q .original_name {u_rx_fifo/mem[3][1]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_2 .original_name {{u_rx_fifo/mem[3][2]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_2 .single_bit_orig_name {u_rx_fifo/mem[3][2]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_3_2/Q .original_name {u_rx_fifo/mem[3][2]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_3 .original_name {{u_rx_fifo/mem[3][3]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_3 .single_bit_orig_name {u_rx_fifo/mem[3][3]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_3_3/Q .original_name {u_rx_fifo/mem[3][3]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_4 .original_name {{u_rx_fifo/mem[3][4]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_4 .single_bit_orig_name {u_rx_fifo/mem[3][4]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_3_4/Q .original_name {u_rx_fifo/mem[3][4]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_5 .original_name {{u_rx_fifo/mem[3][5]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_5 .single_bit_orig_name {u_rx_fifo/mem[3][5]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_3_5/Q .original_name {u_rx_fifo/mem[3][5]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_6 .original_name {{u_rx_fifo/mem[3][6]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_6 .single_bit_orig_name {u_rx_fifo/mem[3][6]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_3_6/Q .original_name {u_rx_fifo/mem[3][6]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_7 .original_name {{u_rx_fifo/mem[3][7]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_3_7 .single_bit_orig_name {u_rx_fifo/mem[3][7]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_3_7/Q .original_name {u_rx_fifo/mem[3][7]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_0 .original_name {{u_rx_fifo/mem[4][0]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_0 .single_bit_orig_name {u_rx_fifo/mem[4][0]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_4_0/Q .original_name {u_rx_fifo/mem[4][0]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_1 .original_name {{u_rx_fifo/mem[4][1]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_1 .single_bit_orig_name {u_rx_fifo/mem[4][1]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_4_1/Q .original_name {u_rx_fifo/mem[4][1]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_2 .original_name {{u_rx_fifo/mem[4][2]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_2 .single_bit_orig_name {u_rx_fifo/mem[4][2]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_4_2/Q .original_name {u_rx_fifo/mem[4][2]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_3 .original_name {{u_rx_fifo/mem[4][3]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_3 .single_bit_orig_name {u_rx_fifo/mem[4][3]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_4_3/Q .original_name {u_rx_fifo/mem[4][3]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_4 .original_name {{u_rx_fifo/mem[4][4]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_4 .single_bit_orig_name {u_rx_fifo/mem[4][4]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_4_4/Q .original_name {u_rx_fifo/mem[4][4]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_5 .original_name {{u_rx_fifo/mem[4][5]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_5 .single_bit_orig_name {u_rx_fifo/mem[4][5]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_4_5/Q .original_name {u_rx_fifo/mem[4][5]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_6 .original_name {{u_rx_fifo/mem[4][6]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_6 .single_bit_orig_name {u_rx_fifo/mem[4][6]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_4_6/Q .original_name {u_rx_fifo/mem[4][6]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_7 .original_name {{u_rx_fifo/mem[4][7]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_4_7 .single_bit_orig_name {u_rx_fifo/mem[4][7]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_4_7/Q .original_name {u_rx_fifo/mem[4][7]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_0 .original_name {{u_rx_fifo/mem[5][0]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_0 .single_bit_orig_name {u_rx_fifo/mem[5][0]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_5_0/Q .original_name {u_rx_fifo/mem[5][0]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_1 .original_name {{u_rx_fifo/mem[5][1]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_1 .single_bit_orig_name {u_rx_fifo/mem[5][1]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_5_1/Q .original_name {u_rx_fifo/mem[5][1]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_2 .original_name {{u_rx_fifo/mem[5][2]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_2 .single_bit_orig_name {u_rx_fifo/mem[5][2]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_5_2/Q .original_name {u_rx_fifo/mem[5][2]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_3 .original_name {{u_rx_fifo/mem[5][3]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_3 .single_bit_orig_name {u_rx_fifo/mem[5][3]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_5_3/Q .original_name {u_rx_fifo/mem[5][3]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_4 .original_name {{u_rx_fifo/mem[5][4]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_4 .single_bit_orig_name {u_rx_fifo/mem[5][4]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_5_4/Q .original_name {u_rx_fifo/mem[5][4]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_5 .original_name {{u_rx_fifo/mem[5][5]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_5 .single_bit_orig_name {u_rx_fifo/mem[5][5]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_5_5/Q .original_name {u_rx_fifo/mem[5][5]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_6 .original_name {{u_rx_fifo/mem[5][6]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_6 .single_bit_orig_name {u_rx_fifo/mem[5][6]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_5_6/Q .original_name {u_rx_fifo/mem[5][6]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_7 .original_name {{u_rx_fifo/mem[5][7]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_5_7 .single_bit_orig_name {u_rx_fifo/mem[5][7]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_5_7/Q .original_name {u_rx_fifo/mem[5][7]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_0 .original_name {{u_rx_fifo/mem[6][0]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_0 .single_bit_orig_name {u_rx_fifo/mem[6][0]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_6_0/Q .original_name {u_rx_fifo/mem[6][0]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_1 .original_name {{u_rx_fifo/mem[6][1]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_1 .single_bit_orig_name {u_rx_fifo/mem[6][1]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_6_1/Q .original_name {u_rx_fifo/mem[6][1]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_2 .original_name {{u_rx_fifo/mem[6][2]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_2 .single_bit_orig_name {u_rx_fifo/mem[6][2]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_6_2/Q .original_name {u_rx_fifo/mem[6][2]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_3 .original_name {{u_rx_fifo/mem[6][3]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_3 .single_bit_orig_name {u_rx_fifo/mem[6][3]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_6_3/Q .original_name {u_rx_fifo/mem[6][3]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_4 .original_name {{u_rx_fifo/mem[6][4]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_4 .single_bit_orig_name {u_rx_fifo/mem[6][4]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_6_4/Q .original_name {u_rx_fifo/mem[6][4]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_5 .original_name {{u_rx_fifo/mem[6][5]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_5 .single_bit_orig_name {u_rx_fifo/mem[6][5]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_6_5/Q .original_name {u_rx_fifo/mem[6][5]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_6 .original_name {{u_rx_fifo/mem[6][6]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_6 .single_bit_orig_name {u_rx_fifo/mem[6][6]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_6_6/Q .original_name {u_rx_fifo/mem[6][6]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_7 .original_name {{u_rx_fifo/mem[6][7]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_6_7 .single_bit_orig_name {u_rx_fifo/mem[6][7]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_6_7/Q .original_name {u_rx_fifo/mem[6][7]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_0 .original_name {{u_rx_fifo/mem[7][0]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_0 .single_bit_orig_name {u_rx_fifo/mem[7][0]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_7_0/Q .original_name {u_rx_fifo/mem[7][0]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_1 .original_name {{u_rx_fifo/mem[7][1]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_1 .single_bit_orig_name {u_rx_fifo/mem[7][1]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_7_1/Q .original_name {u_rx_fifo/mem[7][1]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_2 .original_name {{u_rx_fifo/mem[7][2]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_2 .single_bit_orig_name {u_rx_fifo/mem[7][2]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_7_2/Q .original_name {u_rx_fifo/mem[7][2]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_3 .original_name {{u_rx_fifo/mem[7][3]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_3 .single_bit_orig_name {u_rx_fifo/mem[7][3]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_7_3/Q .original_name {u_rx_fifo/mem[7][3]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_4 .original_name {{u_rx_fifo/mem[7][4]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_4 .single_bit_orig_name {u_rx_fifo/mem[7][4]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_7_4/Q .original_name {u_rx_fifo/mem[7][4]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_5 .original_name {{u_rx_fifo/mem[7][5]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_5 .single_bit_orig_name {u_rx_fifo/mem[7][5]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_7_5/Q .original_name {u_rx_fifo/mem[7][5]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_6 .original_name {{u_rx_fifo/mem[7][6]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_6 .single_bit_orig_name {u_rx_fifo/mem[7][6]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_7_6/Q .original_name {u_rx_fifo/mem[7][6]/q}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_7 .original_name {{u_rx_fifo/mem[7][7]}}
set_db -quiet inst:uart_top/u_rx_fifo/mem_reg_7_7 .single_bit_orig_name {u_rx_fifo/mem[7][7]}
set_db -quiet pin:uart_top/u_rx_fifo/mem_reg_7_7/Q .original_name {u_rx_fifo/mem[7][7]/q}
set_db -quiet inst:uart_top/u_rx_fifo/rd_ptr_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/rd_ptr_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/rd_ptr_reg_0 .original_name {{u_rx_fifo/rd_ptr[0]}}
set_db -quiet inst:uart_top/u_rx_fifo/rd_ptr_reg_0 .single_bit_orig_name {u_rx_fifo/rd_ptr[0]}
set_db -quiet pin:uart_top/u_rx_fifo/rd_ptr_reg_0/Q .original_name {u_rx_fifo/rd_ptr[0]/q}
set_db -quiet inst:uart_top/u_rx_fifo/wr_ptr_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/wr_ptr_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/wr_ptr_reg_0 .original_name {{u_rx_fifo/wr_ptr[0]}}
set_db -quiet inst:uart_top/u_rx_fifo/wr_ptr_reg_0 .single_bit_orig_name {u_rx_fifo/wr_ptr[0]}
set_db -quiet pin:uart_top/u_rx_fifo/wr_ptr_reg_0/Q .original_name {u_rx_fifo/wr_ptr[0]/q}
set_db -quiet inst:uart_top/u_rx_fifo/wr_ptr_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/wr_ptr_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/wr_ptr_reg_1 .original_name {{u_rx_fifo/wr_ptr[1]}}
set_db -quiet inst:uart_top/u_rx_fifo/wr_ptr_reg_1 .single_bit_orig_name {u_rx_fifo/wr_ptr[1]}
set_db -quiet pin:uart_top/u_rx_fifo/wr_ptr_reg_1/Q .original_name {u_rx_fifo/wr_ptr[1]/q}
set_db -quiet inst:uart_top/u_rx_fifo/wr_ptr_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/wr_ptr_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/wr_ptr_reg_2 .original_name {{u_rx_fifo/wr_ptr[2]}}
set_db -quiet inst:uart_top/u_rx_fifo/wr_ptr_reg_2 .single_bit_orig_name {u_rx_fifo/wr_ptr[2]}
set_db -quiet pin:uart_top/u_rx_fifo/wr_ptr_reg_2/Q .original_name {u_rx_fifo/wr_ptr[2]/q}
set_db -quiet inst:uart_top/u_rx_fifo/rd_ptr_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/rd_ptr_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/rd_ptr_reg_2 .original_name {{u_rx_fifo/rd_ptr[2]}}
set_db -quiet inst:uart_top/u_rx_fifo/rd_ptr_reg_2 .single_bit_orig_name {u_rx_fifo/rd_ptr[2]}
set_db -quiet pin:uart_top/u_rx_fifo/rd_ptr_reg_2/Q .original_name {u_rx_fifo/rd_ptr[2]/q}
set_db -quiet pin:uart_top/u_rx_fifo/rd_ptr_reg_2/QN .original_name {u_rx_fifo/rd_ptr[2]/q}
set_db -quiet inst:uart_top/u_rx_fifo/cnt_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/cnt_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/cnt_reg_2 .original_name {{u_rx_fifo/cnt[2]}}
set_db -quiet inst:uart_top/u_rx_fifo/cnt_reg_2 .single_bit_orig_name {u_rx_fifo/cnt[2]}
set_db -quiet pin:uart_top/u_rx_fifo/cnt_reg_2/Q .original_name {u_rx_fifo/cnt[2]/q}
set_db -quiet pin:uart_top/u_rx_fifo/cnt_reg_2/QN .original_name {u_rx_fifo/cnt[2]/q}
set_db -quiet inst:uart_top/u_rx_fifo/rd_ptr_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_rx_fifo/rd_ptr_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_rx_fifo/rd_ptr_reg_1 .original_name {{u_rx_fifo/rd_ptr[1]}}
set_db -quiet inst:uart_top/u_rx_fifo/rd_ptr_reg_1 .single_bit_orig_name {u_rx_fifo/rd_ptr[1]}
set_db -quiet pin:uart_top/u_rx_fifo/rd_ptr_reg_1/Q .original_name {u_rx_fifo/rd_ptr[1]/q}
set_db -quiet pin:uart_top/u_rx_fifo/rd_ptr_reg_1/QN .original_name {u_rx_fifo/rd_ptr[1]/q}
set_db -quiet module:uart_top/sync_fifo_WIDTH8_DEPTH8_ADDR_WIDTH3 .hdl_filelist {{default -v2001 {SYNTHESIS} {../RTL/sync_fifo.v} {../RTL} {}}}
set_db -quiet inst:uart_top/u_tx_fifo/cnt_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/cnt_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/cnt_reg_0 .original_name {{u_tx_fifo/cnt[0]}}
set_db -quiet inst:uart_top/u_tx_fifo/cnt_reg_0 .single_bit_orig_name {u_tx_fifo/cnt[0]}
set_db -quiet pin:uart_top/u_tx_fifo/cnt_reg_0/Q .original_name {u_tx_fifo/cnt[0]/q}
set_db -quiet inst:uart_top/u_tx_fifo/cnt_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/cnt_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/cnt_reg_1 .original_name {{u_tx_fifo/cnt[1]}}
set_db -quiet inst:uart_top/u_tx_fifo/cnt_reg_1 .single_bit_orig_name {u_tx_fifo/cnt[1]}
set_db -quiet pin:uart_top/u_tx_fifo/cnt_reg_1/Q .original_name {u_tx_fifo/cnt[1]/q}
set_db -quiet inst:uart_top/u_tx_fifo/cnt_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/cnt_reg_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/cnt_reg_3 .original_name {{u_tx_fifo/cnt[3]}}
set_db -quiet inst:uart_top/u_tx_fifo/cnt_reg_3 .single_bit_orig_name {u_tx_fifo/cnt[3]}
set_db -quiet pin:uart_top/u_tx_fifo/cnt_reg_3/Q .original_name {u_tx_fifo/cnt[3]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_0 .original_name {{u_tx_fifo/mem[0][0]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_0 .single_bit_orig_name {u_tx_fifo/mem[0][0]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_0_0/Q .original_name {u_tx_fifo/mem[0][0]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_1 .original_name {{u_tx_fifo/mem[0][1]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_1 .single_bit_orig_name {u_tx_fifo/mem[0][1]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_0_1/Q .original_name {u_tx_fifo/mem[0][1]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_2 .original_name {{u_tx_fifo/mem[0][2]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_2 .single_bit_orig_name {u_tx_fifo/mem[0][2]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_0_2/Q .original_name {u_tx_fifo/mem[0][2]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_3 .original_name {{u_tx_fifo/mem[0][3]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_3 .single_bit_orig_name {u_tx_fifo/mem[0][3]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_0_3/Q .original_name {u_tx_fifo/mem[0][3]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_4 .original_name {{u_tx_fifo/mem[0][4]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_4 .single_bit_orig_name {u_tx_fifo/mem[0][4]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_0_4/Q .original_name {u_tx_fifo/mem[0][4]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_5 .original_name {{u_tx_fifo/mem[0][5]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_5 .single_bit_orig_name {u_tx_fifo/mem[0][5]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_0_5/Q .original_name {u_tx_fifo/mem[0][5]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_6 .original_name {{u_tx_fifo/mem[0][6]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_6 .single_bit_orig_name {u_tx_fifo/mem[0][6]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_0_6/Q .original_name {u_tx_fifo/mem[0][6]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_7 .original_name {{u_tx_fifo/mem[0][7]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_0_7 .single_bit_orig_name {u_tx_fifo/mem[0][7]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_0_7/Q .original_name {u_tx_fifo/mem[0][7]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_0 .original_name {{u_tx_fifo/mem[1][0]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_0 .single_bit_orig_name {u_tx_fifo/mem[1][0]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_1_0/Q .original_name {u_tx_fifo/mem[1][0]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_1 .original_name {{u_tx_fifo/mem[1][1]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_1 .single_bit_orig_name {u_tx_fifo/mem[1][1]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_1_1/Q .original_name {u_tx_fifo/mem[1][1]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_2 .original_name {{u_tx_fifo/mem[1][2]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_2 .single_bit_orig_name {u_tx_fifo/mem[1][2]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_1_2/Q .original_name {u_tx_fifo/mem[1][2]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_3 .original_name {{u_tx_fifo/mem[1][3]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_3 .single_bit_orig_name {u_tx_fifo/mem[1][3]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_1_3/Q .original_name {u_tx_fifo/mem[1][3]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_4 .original_name {{u_tx_fifo/mem[1][4]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_4 .single_bit_orig_name {u_tx_fifo/mem[1][4]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_1_4/Q .original_name {u_tx_fifo/mem[1][4]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_5 .original_name {{u_tx_fifo/mem[1][5]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_5 .single_bit_orig_name {u_tx_fifo/mem[1][5]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_1_5/Q .original_name {u_tx_fifo/mem[1][5]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_6 .original_name {{u_tx_fifo/mem[1][6]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_6 .single_bit_orig_name {u_tx_fifo/mem[1][6]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_1_6/Q .original_name {u_tx_fifo/mem[1][6]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_7 .original_name {{u_tx_fifo/mem[1][7]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_1_7 .single_bit_orig_name {u_tx_fifo/mem[1][7]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_1_7/Q .original_name {u_tx_fifo/mem[1][7]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_0 .original_name {{u_tx_fifo/mem[2][0]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_0 .single_bit_orig_name {u_tx_fifo/mem[2][0]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_2_0/Q .original_name {u_tx_fifo/mem[2][0]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_1 .original_name {{u_tx_fifo/mem[2][1]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_1 .single_bit_orig_name {u_tx_fifo/mem[2][1]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_2_1/Q .original_name {u_tx_fifo/mem[2][1]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_2 .original_name {{u_tx_fifo/mem[2][2]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_2 .single_bit_orig_name {u_tx_fifo/mem[2][2]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_2_2/Q .original_name {u_tx_fifo/mem[2][2]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_3 .original_name {{u_tx_fifo/mem[2][3]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_3 .single_bit_orig_name {u_tx_fifo/mem[2][3]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_2_3/Q .original_name {u_tx_fifo/mem[2][3]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_4 .original_name {{u_tx_fifo/mem[2][4]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_4 .single_bit_orig_name {u_tx_fifo/mem[2][4]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_2_4/Q .original_name {u_tx_fifo/mem[2][4]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_5 .original_name {{u_tx_fifo/mem[2][5]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_5 .single_bit_orig_name {u_tx_fifo/mem[2][5]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_2_5/Q .original_name {u_tx_fifo/mem[2][5]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_6 .original_name {{u_tx_fifo/mem[2][6]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_6 .single_bit_orig_name {u_tx_fifo/mem[2][6]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_2_6/Q .original_name {u_tx_fifo/mem[2][6]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_7 .original_name {{u_tx_fifo/mem[2][7]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_2_7 .single_bit_orig_name {u_tx_fifo/mem[2][7]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_2_7/Q .original_name {u_tx_fifo/mem[2][7]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_0 .original_name {{u_tx_fifo/mem[3][0]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_0 .single_bit_orig_name {u_tx_fifo/mem[3][0]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_3_0/Q .original_name {u_tx_fifo/mem[3][0]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_1 .original_name {{u_tx_fifo/mem[3][1]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_1 .single_bit_orig_name {u_tx_fifo/mem[3][1]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_3_1/Q .original_name {u_tx_fifo/mem[3][1]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_2 .original_name {{u_tx_fifo/mem[3][2]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_2 .single_bit_orig_name {u_tx_fifo/mem[3][2]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_3_2/Q .original_name {u_tx_fifo/mem[3][2]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_3 .original_name {{u_tx_fifo/mem[3][3]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_3 .single_bit_orig_name {u_tx_fifo/mem[3][3]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_3_3/Q .original_name {u_tx_fifo/mem[3][3]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_4 .original_name {{u_tx_fifo/mem[3][4]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_4 .single_bit_orig_name {u_tx_fifo/mem[3][4]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_3_4/Q .original_name {u_tx_fifo/mem[3][4]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_5 .original_name {{u_tx_fifo/mem[3][5]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_5 .single_bit_orig_name {u_tx_fifo/mem[3][5]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_3_5/Q .original_name {u_tx_fifo/mem[3][5]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_6 .original_name {{u_tx_fifo/mem[3][6]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_6 .single_bit_orig_name {u_tx_fifo/mem[3][6]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_3_6/Q .original_name {u_tx_fifo/mem[3][6]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_7 .original_name {{u_tx_fifo/mem[3][7]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_3_7 .single_bit_orig_name {u_tx_fifo/mem[3][7]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_3_7/Q .original_name {u_tx_fifo/mem[3][7]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_0 .original_name {{u_tx_fifo/mem[4][0]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_0 .single_bit_orig_name {u_tx_fifo/mem[4][0]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_4_0/Q .original_name {u_tx_fifo/mem[4][0]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_1 .original_name {{u_tx_fifo/mem[4][1]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_1 .single_bit_orig_name {u_tx_fifo/mem[4][1]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_4_1/Q .original_name {u_tx_fifo/mem[4][1]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_2 .original_name {{u_tx_fifo/mem[4][2]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_2 .single_bit_orig_name {u_tx_fifo/mem[4][2]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_4_2/Q .original_name {u_tx_fifo/mem[4][2]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_3 .original_name {{u_tx_fifo/mem[4][3]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_3 .single_bit_orig_name {u_tx_fifo/mem[4][3]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_4_3/Q .original_name {u_tx_fifo/mem[4][3]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_4 .original_name {{u_tx_fifo/mem[4][4]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_4 .single_bit_orig_name {u_tx_fifo/mem[4][4]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_4_4/Q .original_name {u_tx_fifo/mem[4][4]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_5 .original_name {{u_tx_fifo/mem[4][5]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_5 .single_bit_orig_name {u_tx_fifo/mem[4][5]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_4_5/Q .original_name {u_tx_fifo/mem[4][5]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_6 .original_name {{u_tx_fifo/mem[4][6]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_6 .single_bit_orig_name {u_tx_fifo/mem[4][6]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_4_6/Q .original_name {u_tx_fifo/mem[4][6]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_7 .original_name {{u_tx_fifo/mem[4][7]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_4_7 .single_bit_orig_name {u_tx_fifo/mem[4][7]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_4_7/Q .original_name {u_tx_fifo/mem[4][7]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_0 .original_name {{u_tx_fifo/mem[5][0]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_0 .single_bit_orig_name {u_tx_fifo/mem[5][0]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_5_0/Q .original_name {u_tx_fifo/mem[5][0]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_1 .original_name {{u_tx_fifo/mem[5][1]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_1 .single_bit_orig_name {u_tx_fifo/mem[5][1]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_5_1/Q .original_name {u_tx_fifo/mem[5][1]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_2 .original_name {{u_tx_fifo/mem[5][2]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_2 .single_bit_orig_name {u_tx_fifo/mem[5][2]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_5_2/Q .original_name {u_tx_fifo/mem[5][2]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_3 .original_name {{u_tx_fifo/mem[5][3]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_3 .single_bit_orig_name {u_tx_fifo/mem[5][3]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_5_3/Q .original_name {u_tx_fifo/mem[5][3]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_4 .original_name {{u_tx_fifo/mem[5][4]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_4 .single_bit_orig_name {u_tx_fifo/mem[5][4]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_5_4/Q .original_name {u_tx_fifo/mem[5][4]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_5 .original_name {{u_tx_fifo/mem[5][5]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_5 .single_bit_orig_name {u_tx_fifo/mem[5][5]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_5_5/Q .original_name {u_tx_fifo/mem[5][5]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_6 .original_name {{u_tx_fifo/mem[5][6]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_6 .single_bit_orig_name {u_tx_fifo/mem[5][6]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_5_6/Q .original_name {u_tx_fifo/mem[5][6]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_7 .original_name {{u_tx_fifo/mem[5][7]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_5_7 .single_bit_orig_name {u_tx_fifo/mem[5][7]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_5_7/Q .original_name {u_tx_fifo/mem[5][7]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_0 .original_name {{u_tx_fifo/mem[6][0]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_0 .single_bit_orig_name {u_tx_fifo/mem[6][0]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_6_0/Q .original_name {u_tx_fifo/mem[6][0]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_1 .original_name {{u_tx_fifo/mem[6][1]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_1 .single_bit_orig_name {u_tx_fifo/mem[6][1]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_6_1/Q .original_name {u_tx_fifo/mem[6][1]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_2 .original_name {{u_tx_fifo/mem[6][2]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_2 .single_bit_orig_name {u_tx_fifo/mem[6][2]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_6_2/Q .original_name {u_tx_fifo/mem[6][2]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_3 .original_name {{u_tx_fifo/mem[6][3]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_3 .single_bit_orig_name {u_tx_fifo/mem[6][3]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_6_3/Q .original_name {u_tx_fifo/mem[6][3]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_4 .original_name {{u_tx_fifo/mem[6][4]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_4 .single_bit_orig_name {u_tx_fifo/mem[6][4]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_6_4/Q .original_name {u_tx_fifo/mem[6][4]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_5 .original_name {{u_tx_fifo/mem[6][5]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_5 .single_bit_orig_name {u_tx_fifo/mem[6][5]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_6_5/Q .original_name {u_tx_fifo/mem[6][5]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_6 .original_name {{u_tx_fifo/mem[6][6]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_6 .single_bit_orig_name {u_tx_fifo/mem[6][6]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_6_6/Q .original_name {u_tx_fifo/mem[6][6]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_7 .original_name {{u_tx_fifo/mem[6][7]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_6_7 .single_bit_orig_name {u_tx_fifo/mem[6][7]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_6_7/Q .original_name {u_tx_fifo/mem[6][7]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_0 .original_name {{u_tx_fifo/mem[7][0]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_0 .single_bit_orig_name {u_tx_fifo/mem[7][0]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_7_0/Q .original_name {u_tx_fifo/mem[7][0]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_1 .original_name {{u_tx_fifo/mem[7][1]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_1 .single_bit_orig_name {u_tx_fifo/mem[7][1]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_7_1/Q .original_name {u_tx_fifo/mem[7][1]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_2 .original_name {{u_tx_fifo/mem[7][2]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_2 .single_bit_orig_name {u_tx_fifo/mem[7][2]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_7_2/Q .original_name {u_tx_fifo/mem[7][2]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_3 .original_name {{u_tx_fifo/mem[7][3]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_3 .single_bit_orig_name {u_tx_fifo/mem[7][3]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_7_3/Q .original_name {u_tx_fifo/mem[7][3]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_4 .original_name {{u_tx_fifo/mem[7][4]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_4 .single_bit_orig_name {u_tx_fifo/mem[7][4]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_7_4/Q .original_name {u_tx_fifo/mem[7][4]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_5 .original_name {{u_tx_fifo/mem[7][5]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_5 .single_bit_orig_name {u_tx_fifo/mem[7][5]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_7_5/Q .original_name {u_tx_fifo/mem[7][5]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_6 .original_name {{u_tx_fifo/mem[7][6]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_6 .single_bit_orig_name {u_tx_fifo/mem[7][6]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_7_6/Q .original_name {u_tx_fifo/mem[7][6]/q}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_7 .original_name {{u_tx_fifo/mem[7][7]}}
set_db -quiet inst:uart_top/u_tx_fifo/mem_reg_7_7 .single_bit_orig_name {u_tx_fifo/mem[7][7]}
set_db -quiet pin:uart_top/u_tx_fifo/mem_reg_7_7/Q .original_name {u_tx_fifo/mem[7][7]/q}
set_db -quiet inst:uart_top/u_tx_fifo/rd_ptr_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/rd_ptr_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/rd_ptr_reg_0 .original_name {{u_tx_fifo/rd_ptr[0]}}
set_db -quiet inst:uart_top/u_tx_fifo/rd_ptr_reg_0 .single_bit_orig_name {u_tx_fifo/rd_ptr[0]}
set_db -quiet pin:uart_top/u_tx_fifo/rd_ptr_reg_0/Q .original_name {u_tx_fifo/rd_ptr[0]/q}
set_db -quiet pin:uart_top/u_tx_fifo/rd_ptr_reg_0/QN .original_name {u_tx_fifo/rd_ptr[0]/q}
set_db -quiet inst:uart_top/u_tx_fifo/rd_ptr_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/rd_ptr_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/rd_ptr_reg_1 .original_name {{u_tx_fifo/rd_ptr[1]}}
set_db -quiet inst:uart_top/u_tx_fifo/rd_ptr_reg_1 .single_bit_orig_name {u_tx_fifo/rd_ptr[1]}
set_db -quiet pin:uart_top/u_tx_fifo/rd_ptr_reg_1/Q .original_name {u_tx_fifo/rd_ptr[1]/q}
set_db -quiet inst:uart_top/u_tx_fifo/rd_ptr_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/rd_ptr_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/rd_ptr_reg_2 .original_name {{u_tx_fifo/rd_ptr[2]}}
set_db -quiet inst:uart_top/u_tx_fifo/rd_ptr_reg_2 .single_bit_orig_name {u_tx_fifo/rd_ptr[2]}
set_db -quiet pin:uart_top/u_tx_fifo/rd_ptr_reg_2/Q .original_name {u_tx_fifo/rd_ptr[2]/q}
set_db -quiet inst:uart_top/u_tx_fifo/wr_ptr_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/wr_ptr_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/wr_ptr_reg_0 .original_name {{u_tx_fifo/wr_ptr[0]}}
set_db -quiet inst:uart_top/u_tx_fifo/wr_ptr_reg_0 .single_bit_orig_name {u_tx_fifo/wr_ptr[0]}
set_db -quiet pin:uart_top/u_tx_fifo/wr_ptr_reg_0/Q .original_name {u_tx_fifo/wr_ptr[0]/q}
set_db -quiet inst:uart_top/u_tx_fifo/wr_ptr_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/wr_ptr_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/wr_ptr_reg_1 .original_name {{u_tx_fifo/wr_ptr[1]}}
set_db -quiet inst:uart_top/u_tx_fifo/wr_ptr_reg_1 .single_bit_orig_name {u_tx_fifo/wr_ptr[1]}
set_db -quiet pin:uart_top/u_tx_fifo/wr_ptr_reg_1/Q .original_name {u_tx_fifo/wr_ptr[1]/q}
set_db -quiet inst:uart_top/u_tx_fifo/wr_ptr_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/wr_ptr_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/wr_ptr_reg_2 .original_name {{u_tx_fifo/wr_ptr[2]}}
set_db -quiet inst:uart_top/u_tx_fifo/wr_ptr_reg_2 .single_bit_orig_name {u_tx_fifo/wr_ptr[2]}
set_db -quiet pin:uart_top/u_tx_fifo/wr_ptr_reg_2/Q .original_name {u_tx_fifo/wr_ptr[2]/q}
set_db -quiet inst:uart_top/u_tx_fifo/cnt_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_tx_fifo/cnt_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_tx_fifo/cnt_reg_2 .original_name {{u_tx_fifo/cnt[2]}}
set_db -quiet inst:uart_top/u_tx_fifo/cnt_reg_2 .single_bit_orig_name {u_tx_fifo/cnt[2]}
set_db -quiet pin:uart_top/u_tx_fifo/cnt_reg_2/Q .original_name {u_tx_fifo/cnt[2]/q}
set_db -quiet pin:uart_top/u_tx_fifo/cnt_reg_2/QN .original_name {u_tx_fifo/cnt[2]/q}
set_db -quiet module:uart_top/uart_rx .is_sop_cluster true
set_db -quiet module:uart_top/uart_rx .hdl_filelist {{default -v2001 {SYNTHESIS} {../RTL/uart_rx.v} {../RTL} {}}}
set_db -quiet inst:uart_top/u_uart_rx/parity_err_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/parity_err_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/parity_err_reg .original_name u_uart_rx/parity_err
set_db -quiet inst:uart_top/u_uart_rx/parity_err_reg .single_bit_orig_name u_uart_rx/parity_err
set_db -quiet pin:uart_top/u_uart_rx/parity_err_reg/Q .original_name u_uart_rx/parity_err/q
set_db -quiet inst:uart_top/u_uart_rx/overrun_err_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/overrun_err_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/overrun_err_reg .original_name u_uart_rx/overrun_err
set_db -quiet inst:uart_top/u_uart_rx/overrun_err_reg .single_bit_orig_name u_uart_rx/overrun_err
set_db -quiet pin:uart_top/u_uart_rx/overrun_err_reg/Q .original_name u_uart_rx/overrun_err/q
set_db -quiet inst:uart_top/u_uart_rx/framing_err_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/framing_err_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/framing_err_reg .original_name u_uart_rx/framing_err
set_db -quiet inst:uart_top/u_uart_rx/framing_err_reg .single_bit_orig_name u_uart_rx/framing_err
set_db -quiet pin:uart_top/u_uart_rx/framing_err_reg/Q .original_name u_uart_rx/framing_err/q
set_db -quiet inst:uart_top/u_uart_rx/rxd_sync_d_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/rxd_sync_d_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/rxd_sync_d_reg .original_name u_uart_rx/rxd_sync_d
set_db -quiet inst:uart_top/u_uart_rx/rxd_sync_d_reg .single_bit_orig_name u_uart_rx/rxd_sync_d
set_db -quiet pin:uart_top/u_uart_rx/rxd_sync_d_reg/Q .original_name u_uart_rx/rxd_sync_d/q
set_db -quiet pin:uart_top/u_uart_rx/rxd_sync_d_reg/QN .original_name u_uart_rx/rxd_sync_d/q
set_db -quiet inst:uart_top/u_uart_rx/rxd_sync_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/rxd_sync_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/rxd_sync_reg .original_name u_uart_rx/rxd_sync
set_db -quiet inst:uart_top/u_uart_rx/rxd_sync_reg .single_bit_orig_name u_uart_rx/rxd_sync
set_db -quiet pin:uart_top/u_uart_rx/rxd_sync_reg/Q .original_name u_uart_rx/rxd_sync/q
set_db -quiet pin:uart_top/u_uart_rx/rxd_sync_reg/QN .original_name u_uart_rx/rxd_sync/q
set_db -quiet inst:uart_top/u_uart_rx/rxd_meta_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/rxd_meta_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/rxd_meta_reg .original_name u_uart_rx/rxd_meta
set_db -quiet inst:uart_top/u_uart_rx/rxd_meta_reg .single_bit_orig_name u_uart_rx/rxd_meta
set_db -quiet pin:uart_top/u_uart_rx/rxd_meta_reg/Q .original_name u_uart_rx/rxd_meta/q
set_db -quiet pin:uart_top/u_uart_rx/rxd_meta_reg/QN .original_name u_uart_rx/rxd_meta/q
set_db -quiet inst:uart_top/u_uart_rx/bit_cnt_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/bit_cnt_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/bit_cnt_reg_2 .original_name {{u_uart_rx/bit_cnt[2]}}
set_db -quiet inst:uart_top/u_uart_rx/bit_cnt_reg_2 .single_bit_orig_name {u_uart_rx/bit_cnt[2]}
set_db -quiet pin:uart_top/u_uart_rx/bit_cnt_reg_2/Q .original_name {u_uart_rx/bit_cnt[2]/q}
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_0 .original_name {{u_uart_rx/fifo_wr_data[0]}}
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_0 .single_bit_orig_name {u_uart_rx/fifo_wr_data[0]}
set_db -quiet pin:uart_top/u_uart_rx/fifo_wr_data_reg_0/Q .original_name {u_uart_rx/fifo_wr_data[0]/q}
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_1 .original_name {{u_uart_rx/fifo_wr_data[1]}}
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_1 .single_bit_orig_name {u_uart_rx/fifo_wr_data[1]}
set_db -quiet pin:uart_top/u_uart_rx/fifo_wr_data_reg_1/Q .original_name {u_uart_rx/fifo_wr_data[1]/q}
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_2 .original_name {{u_uart_rx/fifo_wr_data[2]}}
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_2 .single_bit_orig_name {u_uart_rx/fifo_wr_data[2]}
set_db -quiet pin:uart_top/u_uart_rx/fifo_wr_data_reg_2/Q .original_name {u_uart_rx/fifo_wr_data[2]/q}
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_3 .original_name {{u_uart_rx/fifo_wr_data[3]}}
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_3 .single_bit_orig_name {u_uart_rx/fifo_wr_data[3]}
set_db -quiet pin:uart_top/u_uart_rx/fifo_wr_data_reg_3/Q .original_name {u_uart_rx/fifo_wr_data[3]/q}
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_4 .original_name {{u_uart_rx/fifo_wr_data[4]}}
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_4 .single_bit_orig_name {u_uart_rx/fifo_wr_data[4]}
set_db -quiet pin:uart_top/u_uart_rx/fifo_wr_data_reg_4/Q .original_name {u_uart_rx/fifo_wr_data[4]/q}
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_5 .original_name {{u_uart_rx/fifo_wr_data[5]}}
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_5 .single_bit_orig_name {u_uart_rx/fifo_wr_data[5]}
set_db -quiet pin:uart_top/u_uart_rx/fifo_wr_data_reg_5/Q .original_name {u_uart_rx/fifo_wr_data[5]/q}
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_6 .original_name {{u_uart_rx/fifo_wr_data[6]}}
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_6 .single_bit_orig_name {u_uart_rx/fifo_wr_data[6]}
set_db -quiet pin:uart_top/u_uart_rx/fifo_wr_data_reg_6/Q .original_name {u_uart_rx/fifo_wr_data[6]/q}
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_7 .original_name {{u_uart_rx/fifo_wr_data[7]}}
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_data_reg_7 .single_bit_orig_name {u_uart_rx/fifo_wr_data[7]}
set_db -quiet pin:uart_top/u_uart_rx/fifo_wr_data_reg_7/Q .original_name {u_uart_rx/fifo_wr_data[7]/q}
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_en_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_en_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_en_reg .original_name u_uart_rx/fifo_wr_en
set_db -quiet inst:uart_top/u_uart_rx/fifo_wr_en_reg .single_bit_orig_name u_uart_rx/fifo_wr_en
set_db -quiet pin:uart_top/u_uart_rx/fifo_wr_en_reg/Q .original_name u_uart_rx/fifo_wr_en/q
set_db -quiet inst:uart_top/u_uart_rx/os_cnt16_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/os_cnt16_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/os_cnt16_reg_0 .original_name {{u_uart_rx/os_cnt16[0]}}
set_db -quiet inst:uart_top/u_uart_rx/os_cnt16_reg_0 .single_bit_orig_name {u_uart_rx/os_cnt16[0]}
set_db -quiet pin:uart_top/u_uart_rx/os_cnt16_reg_0/Q .original_name {u_uart_rx/os_cnt16[0]/q}
set_db -quiet inst:uart_top/u_uart_rx/os_cnt16_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/os_cnt16_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/os_cnt16_reg_1 .original_name {{u_uart_rx/os_cnt16[1]}}
set_db -quiet inst:uart_top/u_uart_rx/os_cnt16_reg_1 .single_bit_orig_name {u_uart_rx/os_cnt16[1]}
set_db -quiet pin:uart_top/u_uart_rx/os_cnt16_reg_1/Q .original_name {u_uart_rx/os_cnt16[1]/q}
set_db -quiet inst:uart_top/u_uart_rx/os_cnt16_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/os_cnt16_reg_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/os_cnt16_reg_3 .original_name {{u_uart_rx/os_cnt16[3]}}
set_db -quiet inst:uart_top/u_uart_rx/os_cnt16_reg_3 .single_bit_orig_name {u_uart_rx/os_cnt16[3]}
set_db -quiet pin:uart_top/u_uart_rx/os_cnt16_reg_3/Q .original_name {u_uart_rx/os_cnt16[3]/q}
set_db -quiet inst:uart_top/u_uart_rx/parity_calc_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/parity_calc_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/parity_calc_reg .original_name u_uart_rx/parity_calc
set_db -quiet inst:uart_top/u_uart_rx/parity_calc_reg .single_bit_orig_name u_uart_rx/parity_calc
set_db -quiet pin:uart_top/u_uart_rx/parity_calc_reg/Q .original_name u_uart_rx/parity_calc/q
set_db -quiet inst:uart_top/u_uart_rx/rx_done_pulse_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/rx_done_pulse_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/rx_done_pulse_reg .original_name u_uart_rx/rx_done_pulse
set_db -quiet inst:uart_top/u_uart_rx/rx_done_pulse_reg .single_bit_orig_name u_uart_rx/rx_done_pulse
set_db -quiet pin:uart_top/u_uart_rx/rx_done_pulse_reg/Q .original_name u_uart_rx/rx_done_pulse/q
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_0 .original_name {{u_uart_rx/shift_reg[0]}}
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_0 .single_bit_orig_name {u_uart_rx/shift_reg[0]}
set_db -quiet pin:uart_top/u_uart_rx/shift_reg_reg_0/Q .original_name {u_uart_rx/shift_reg[0]/q}
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_1 .original_name {{u_uart_rx/shift_reg[1]}}
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_1 .single_bit_orig_name {u_uart_rx/shift_reg[1]}
set_db -quiet pin:uart_top/u_uart_rx/shift_reg_reg_1/Q .original_name {u_uart_rx/shift_reg[1]/q}
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_2 .original_name {{u_uart_rx/shift_reg[2]}}
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_2 .single_bit_orig_name {u_uart_rx/shift_reg[2]}
set_db -quiet pin:uart_top/u_uart_rx/shift_reg_reg_2/Q .original_name {u_uart_rx/shift_reg[2]/q}
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_3 .original_name {{u_uart_rx/shift_reg[3]}}
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_3 .single_bit_orig_name {u_uart_rx/shift_reg[3]}
set_db -quiet pin:uart_top/u_uart_rx/shift_reg_reg_3/Q .original_name {u_uart_rx/shift_reg[3]/q}
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_4 .original_name {{u_uart_rx/shift_reg[4]}}
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_4 .single_bit_orig_name {u_uart_rx/shift_reg[4]}
set_db -quiet pin:uart_top/u_uart_rx/shift_reg_reg_4/Q .original_name {u_uart_rx/shift_reg[4]/q}
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_5 .original_name {{u_uart_rx/shift_reg[5]}}
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_5 .single_bit_orig_name {u_uart_rx/shift_reg[5]}
set_db -quiet pin:uart_top/u_uart_rx/shift_reg_reg_5/Q .original_name {u_uart_rx/shift_reg[5]/q}
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_6 .original_name {{u_uart_rx/shift_reg[6]}}
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_6 .single_bit_orig_name {u_uart_rx/shift_reg[6]}
set_db -quiet pin:uart_top/u_uart_rx/shift_reg_reg_6/Q .original_name {u_uart_rx/shift_reg[6]/q}
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_7 .original_name {{u_uart_rx/shift_reg[7]}}
set_db -quiet inst:uart_top/u_uart_rx/shift_reg_reg_7 .single_bit_orig_name {u_uart_rx/shift_reg[7]}
set_db -quiet pin:uart_top/u_uart_rx/shift_reg_reg_7/Q .original_name {u_uart_rx/shift_reg[7]/q}
set_db -quiet inst:uart_top/u_uart_rx/state_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/state_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/state_reg_0 .original_name {{u_uart_rx/state[0]}}
set_db -quiet inst:uart_top/u_uart_rx/state_reg_0 .single_bit_orig_name {u_uart_rx/state[0]}
set_db -quiet pin:uart_top/u_uart_rx/state_reg_0/Q .original_name {u_uart_rx/state[0]/q}
set_db -quiet pin:uart_top/u_uart_rx/state_reg_0/QN .original_name {u_uart_rx/state[0]/q}
set_db -quiet inst:uart_top/u_uart_rx/state_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/state_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/state_reg_1 .original_name {{u_uart_rx/state[1]}}
set_db -quiet inst:uart_top/u_uart_rx/state_reg_1 .single_bit_orig_name {u_uart_rx/state[1]}
set_db -quiet pin:uart_top/u_uart_rx/state_reg_1/Q .original_name {u_uart_rx/state[1]/q}
set_db -quiet inst:uart_top/u_uart_rx/stop_done_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/stop_done_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/stop_done_reg .original_name u_uart_rx/stop_done
set_db -quiet inst:uart_top/u_uart_rx/stop_done_reg .single_bit_orig_name u_uart_rx/stop_done
set_db -quiet pin:uart_top/u_uart_rx/stop_done_reg/Q .original_name u_uart_rx/stop_done/q
set_db -quiet inst:uart_top/u_uart_rx/state_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/state_reg_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/state_reg_4 .original_name {{u_uart_rx/state[4]}}
set_db -quiet inst:uart_top/u_uart_rx/state_reg_4 .single_bit_orig_name {u_uart_rx/state[4]}
set_db -quiet pin:uart_top/u_uart_rx/state_reg_4/Q .original_name {u_uart_rx/state[4]/q}
set_db -quiet pin:uart_top/u_uart_rx/state_reg_4/QN .original_name {u_uart_rx/state[4]/q}
set_db -quiet inst:uart_top/u_uart_rx/state_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/state_reg_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/state_reg_3 .original_name {{u_uart_rx/state[3]}}
set_db -quiet inst:uart_top/u_uart_rx/state_reg_3 .single_bit_orig_name {u_uart_rx/state[3]}
set_db -quiet pin:uart_top/u_uart_rx/state_reg_3/Q .original_name {u_uart_rx/state[3]/q}
set_db -quiet pin:uart_top/u_uart_rx/state_reg_3/QN .original_name {u_uart_rx/state[3]/q}
set_db -quiet inst:uart_top/u_uart_rx/os_cnt16_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/os_cnt16_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/os_cnt16_reg_2 .original_name {{u_uart_rx/os_cnt16[2]}}
set_db -quiet inst:uart_top/u_uart_rx/os_cnt16_reg_2 .single_bit_orig_name {u_uart_rx/os_cnt16[2]}
set_db -quiet pin:uart_top/u_uart_rx/os_cnt16_reg_2/Q .original_name {u_uart_rx/os_cnt16[2]/q}
set_db -quiet pin:uart_top/u_uart_rx/os_cnt16_reg_2/QN .original_name {u_uart_rx/os_cnt16[2]/q}
set_db -quiet inst:uart_top/u_uart_rx/state_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/state_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/state_reg_2 .original_name {{u_uart_rx/state[2]}}
set_db -quiet inst:uart_top/u_uart_rx/state_reg_2 .single_bit_orig_name {u_uart_rx/state[2]}
set_db -quiet pin:uart_top/u_uart_rx/state_reg_2/Q .original_name {u_uart_rx/state[2]/q}
set_db -quiet pin:uart_top/u_uart_rx/state_reg_2/QN .original_name {u_uart_rx/state[2]/q}
set_db -quiet inst:uart_top/u_uart_rx/bit_cnt_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/bit_cnt_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/bit_cnt_reg_1 .original_name {{u_uart_rx/bit_cnt[1]}}
set_db -quiet inst:uart_top/u_uart_rx/bit_cnt_reg_1 .single_bit_orig_name {u_uart_rx/bit_cnt[1]}
set_db -quiet pin:uart_top/u_uart_rx/bit_cnt_reg_1/Q .original_name {u_uart_rx/bit_cnt[1]/q}
set_db -quiet pin:uart_top/u_uart_rx/bit_cnt_reg_1/QN .original_name {u_uart_rx/bit_cnt[1]/q}
set_db -quiet inst:uart_top/u_uart_rx/bit_cnt_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/bit_cnt_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/bit_cnt_reg_0 .original_name {{u_uart_rx/bit_cnt[0]}}
set_db -quiet inst:uart_top/u_uart_rx/bit_cnt_reg_0 .single_bit_orig_name {u_uart_rx/bit_cnt[0]}
set_db -quiet pin:uart_top/u_uart_rx/bit_cnt_reg_0/Q .original_name {u_uart_rx/bit_cnt[0]/q}
set_db -quiet pin:uart_top/u_uart_rx/bit_cnt_reg_0/QN .original_name {u_uart_rx/bit_cnt[0]/q}
set_db -quiet module:uart_top/uart_tx .is_sop_cluster true
set_db -quiet module:uart_top/uart_tx .hdl_filelist {{default -v2001 {SYNTHESIS} {../RTL/uart_tx.v} {../RTL} {}}}
set_db -quiet inst:uart_top/u_uart_tx/txd_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/txd_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/txd_reg .original_name u_uart_tx/txd
set_db -quiet inst:uart_top/u_uart_tx/txd_reg .single_bit_orig_name u_uart_tx/txd
set_db -quiet pin:uart_top/u_uart_tx/txd_reg/Q .original_name u_uart_tx/txd/q
set_db -quiet pin:uart_top/u_uart_tx/txd_reg/QN .original_name u_uart_tx/txd/q
set_db -quiet inst:uart_top/u_uart_tx/tx_done_pulse_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/tx_done_pulse_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/tx_done_pulse_reg .original_name u_uart_tx/tx_done_pulse
set_db -quiet inst:uart_top/u_uart_tx/tx_done_pulse_reg .single_bit_orig_name u_uart_tx/tx_done_pulse
set_db -quiet pin:uart_top/u_uart_tx/tx_done_pulse_reg/Q .original_name u_uart_tx/tx_done_pulse/q
set_db -quiet inst:uart_top/u_uart_tx/fifo_rd_en_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/fifo_rd_en_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/fifo_rd_en_reg .original_name u_uart_tx/fifo_rd_en
set_db -quiet inst:uart_top/u_uart_tx/fifo_rd_en_reg .single_bit_orig_name u_uart_tx/fifo_rd_en
set_db -quiet pin:uart_top/u_uart_tx/fifo_rd_en_reg/Q .original_name u_uart_tx/fifo_rd_en/q
set_db -quiet inst:uart_top/u_uart_tx/bit_cnt_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/bit_cnt_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/bit_cnt_reg_0 .original_name {{u_uart_tx/bit_cnt[0]}}
set_db -quiet inst:uart_top/u_uart_tx/bit_cnt_reg_0 .single_bit_orig_name {u_uart_tx/bit_cnt[0]}
set_db -quiet pin:uart_top/u_uart_tx/bit_cnt_reg_0/Q .original_name {u_uart_tx/bit_cnt[0]/q}
set_db -quiet pin:uart_top/u_uart_tx/bit_cnt_reg_0/QN .original_name {u_uart_tx/bit_cnt[0]/q}
set_db -quiet inst:uart_top/u_uart_tx/bit_cnt_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/bit_cnt_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/bit_cnt_reg_2 .original_name {{u_uart_tx/bit_cnt[2]}}
set_db -quiet inst:uart_top/u_uart_tx/bit_cnt_reg_2 .single_bit_orig_name {u_uart_tx/bit_cnt[2]}
set_db -quiet pin:uart_top/u_uart_tx/bit_cnt_reg_2/Q .original_name {u_uart_tx/bit_cnt[2]/q}
set_db -quiet inst:uart_top/u_uart_tx/os_cnt16_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/os_cnt16_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/os_cnt16_reg_0 .original_name {{u_uart_tx/os_cnt16[0]}}
set_db -quiet inst:uart_top/u_uart_tx/os_cnt16_reg_0 .single_bit_orig_name {u_uart_tx/os_cnt16[0]}
set_db -quiet pin:uart_top/u_uart_tx/os_cnt16_reg_0/Q .original_name {u_uart_tx/os_cnt16[0]/q}
set_db -quiet inst:uart_top/u_uart_tx/os_cnt16_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/os_cnt16_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/os_cnt16_reg_1 .original_name {{u_uart_tx/os_cnt16[1]}}
set_db -quiet inst:uart_top/u_uart_tx/os_cnt16_reg_1 .single_bit_orig_name {u_uart_tx/os_cnt16[1]}
set_db -quiet pin:uart_top/u_uart_tx/os_cnt16_reg_1/Q .original_name {u_uart_tx/os_cnt16[1]/q}
set_db -quiet inst:uart_top/u_uart_tx/os_cnt16_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/os_cnt16_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/os_cnt16_reg_2 .original_name {{u_uart_tx/os_cnt16[2]}}
set_db -quiet inst:uart_top/u_uart_tx/os_cnt16_reg_2 .single_bit_orig_name {u_uart_tx/os_cnt16[2]}
set_db -quiet pin:uart_top/u_uart_tx/os_cnt16_reg_2/Q .original_name {u_uart_tx/os_cnt16[2]/q}
set_db -quiet inst:uart_top/u_uart_tx/os_cnt16_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/os_cnt16_reg_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/os_cnt16_reg_3 .original_name {{u_uart_tx/os_cnt16[3]}}
set_db -quiet inst:uart_top/u_uart_tx/os_cnt16_reg_3 .single_bit_orig_name {u_uart_tx/os_cnt16[3]}
set_db -quiet pin:uart_top/u_uart_tx/os_cnt16_reg_3/Q .original_name {u_uart_tx/os_cnt16[3]/q}
set_db -quiet inst:uart_top/u_uart_tx/parity_bit_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/parity_bit_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/parity_bit_reg .original_name u_uart_tx/parity_bit
set_db -quiet inst:uart_top/u_uart_tx/parity_bit_reg .single_bit_orig_name u_uart_tx/parity_bit
set_db -quiet pin:uart_top/u_uart_tx/parity_bit_reg/Q .original_name u_uart_tx/parity_bit/q
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_0 .original_name {{u_uart_tx/shift_reg[0]}}
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_0 .single_bit_orig_name {u_uart_tx/shift_reg[0]}
set_db -quiet pin:uart_top/u_uart_tx/shift_reg_reg_0/Q .original_name {u_uart_tx/shift_reg[0]/q}
set_db -quiet pin:uart_top/u_uart_tx/shift_reg_reg_0/QN .original_name {u_uart_tx/shift_reg[0]/q}
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_1 .original_name {{u_uart_tx/shift_reg[1]}}
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_1 .single_bit_orig_name {u_uart_tx/shift_reg[1]}
set_db -quiet pin:uart_top/u_uart_tx/shift_reg_reg_1/Q .original_name {u_uart_tx/shift_reg[1]/q}
set_db -quiet pin:uart_top/u_uart_tx/shift_reg_reg_1/QN .original_name {u_uart_tx/shift_reg[1]/q}
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_2 .original_name {{u_uart_tx/shift_reg[2]}}
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_2 .single_bit_orig_name {u_uart_tx/shift_reg[2]}
set_db -quiet pin:uart_top/u_uart_tx/shift_reg_reg_2/Q .original_name {u_uart_tx/shift_reg[2]/q}
set_db -quiet pin:uart_top/u_uart_tx/shift_reg_reg_2/QN .original_name {u_uart_tx/shift_reg[2]/q}
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_3 .original_name {{u_uart_tx/shift_reg[3]}}
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_3 .single_bit_orig_name {u_uart_tx/shift_reg[3]}
set_db -quiet pin:uart_top/u_uart_tx/shift_reg_reg_3/Q .original_name {u_uart_tx/shift_reg[3]/q}
set_db -quiet pin:uart_top/u_uart_tx/shift_reg_reg_3/QN .original_name {u_uart_tx/shift_reg[3]/q}
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_4 .original_name {{u_uart_tx/shift_reg[4]}}
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_4 .single_bit_orig_name {u_uart_tx/shift_reg[4]}
set_db -quiet pin:uart_top/u_uart_tx/shift_reg_reg_4/Q .original_name {u_uart_tx/shift_reg[4]/q}
set_db -quiet pin:uart_top/u_uart_tx/shift_reg_reg_4/QN .original_name {u_uart_tx/shift_reg[4]/q}
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_5 .original_name {{u_uart_tx/shift_reg[5]}}
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_5 .single_bit_orig_name {u_uart_tx/shift_reg[5]}
set_db -quiet pin:uart_top/u_uart_tx/shift_reg_reg_5/Q .original_name {u_uart_tx/shift_reg[5]/q}
set_db -quiet pin:uart_top/u_uart_tx/shift_reg_reg_5/QN .original_name {u_uart_tx/shift_reg[5]/q}
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_6 .original_name {{u_uart_tx/shift_reg[6]}}
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_6 .single_bit_orig_name {u_uart_tx/shift_reg[6]}
set_db -quiet pin:uart_top/u_uart_tx/shift_reg_reg_6/Q .original_name {u_uart_tx/shift_reg[6]/q}
set_db -quiet pin:uart_top/u_uart_tx/shift_reg_reg_6/QN .original_name {u_uart_tx/shift_reg[6]/q}
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_7 .original_name {{u_uart_tx/shift_reg[7]}}
set_db -quiet inst:uart_top/u_uart_tx/shift_reg_reg_7 .single_bit_orig_name {u_uart_tx/shift_reg[7]}
set_db -quiet pin:uart_top/u_uart_tx/shift_reg_reg_7/Q .original_name {u_uart_tx/shift_reg[7]/q}
set_db -quiet pin:uart_top/u_uart_tx/shift_reg_reg_7/QN .original_name {u_uart_tx/shift_reg[7]/q}
set_db -quiet inst:uart_top/u_uart_tx/state_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/state_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/state_reg_0 .original_name {{u_uart_tx/state[0]}}
set_db -quiet inst:uart_top/u_uart_tx/state_reg_0 .single_bit_orig_name {u_uart_tx/state[0]}
set_db -quiet pin:uart_top/u_uart_tx/state_reg_0/Q .original_name {u_uart_tx/state[0]/q}
set_db -quiet pin:uart_top/u_uart_tx/state_reg_0/QN .original_name {u_uart_tx/state[0]/q}
set_db -quiet inst:uart_top/u_uart_tx/state_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/state_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/state_reg_1 .original_name {{u_uart_tx/state[1]}}
set_db -quiet inst:uart_top/u_uart_tx/state_reg_1 .single_bit_orig_name {u_uart_tx/state[1]}
set_db -quiet pin:uart_top/u_uart_tx/state_reg_1/Q .original_name {u_uart_tx/state[1]/q}
set_db -quiet inst:uart_top/u_uart_tx/state_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/state_reg_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/state_reg_3 .original_name {{u_uart_tx/state[3]}}
set_db -quiet inst:uart_top/u_uart_tx/state_reg_3 .single_bit_orig_name {u_uart_tx/state[3]}
set_db -quiet pin:uart_top/u_uart_tx/state_reg_3/Q .original_name {u_uart_tx/state[3]/q}
set_db -quiet inst:uart_top/u_uart_tx/state_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/state_reg_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/state_reg_4 .original_name {{u_uart_tx/state[4]}}
set_db -quiet inst:uart_top/u_uart_tx/state_reg_4 .single_bit_orig_name {u_uart_tx/state[4]}
set_db -quiet pin:uart_top/u_uart_tx/state_reg_4/Q .original_name {u_uart_tx/state[4]/q}
set_db -quiet inst:uart_top/u_uart_tx/stop_done_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/stop_done_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/stop_done_reg .original_name u_uart_tx/stop_done
set_db -quiet inst:uart_top/u_uart_tx/stop_done_reg .single_bit_orig_name u_uart_tx/stop_done
set_db -quiet pin:uart_top/u_uart_tx/stop_done_reg/Q .original_name u_uart_tx/stop_done/q
set_db -quiet inst:uart_top/u_uart_tx/state_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/state_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/state_reg_2 .original_name {{u_uart_tx/state[2]}}
set_db -quiet inst:uart_top/u_uart_tx/state_reg_2 .single_bit_orig_name {u_uart_tx/state[2]}
set_db -quiet pin:uart_top/u_uart_tx/state_reg_2/Q .original_name {u_uart_tx/state[2]/q}
set_db -quiet pin:uart_top/u_uart_tx/state_reg_2/QN .original_name {u_uart_tx/state[2]/q}
set_db -quiet inst:uart_top/u_uart_tx/bit_cnt_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/bit_cnt_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/bit_cnt_reg_1 .original_name {{u_uart_tx/bit_cnt[1]}}
set_db -quiet inst:uart_top/u_uart_tx/bit_cnt_reg_1 .single_bit_orig_name {u_uart_tx/bit_cnt[1]}
set_db -quiet pin:uart_top/u_uart_tx/bit_cnt_reg_1/Q .original_name {u_uart_tx/bit_cnt[1]/q}
set_db -quiet pin:uart_top/u_uart_tx/bit_cnt_reg_1/QN .original_name {u_uart_tx/bit_cnt[1]/q}
set_db -quiet inst:uart_top/rst_n_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/rst_n_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/rst_n_reg .original_name rst_n
set_db -quiet inst:uart_top/rst_n_reg .single_bit_orig_name rst_n
set_db -quiet pin:uart_top/rst_n_reg/Q .original_name rst_n/q
set_db -quiet inst:uart_top/rst_meta_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/rst_meta_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/rst_meta_reg .original_name rst_meta
set_db -quiet inst:uart_top/rst_meta_reg .single_bit_orig_name rst_meta
set_db -quiet pin:uart_top/rst_meta_reg/Q .original_name rst_meta/q
set_db -quiet inst:uart_top/framing_err_flag_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/framing_err_flag_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/framing_err_flag_reg .original_name framing_err_flag
set_db -quiet inst:uart_top/framing_err_flag_reg .single_bit_orig_name framing_err_flag
set_db -quiet pin:uart_top/framing_err_flag_reg/Q .original_name framing_err_flag/q
set_db -quiet inst:uart_top/overrun_err_flag_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/overrun_err_flag_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/overrun_err_flag_reg .original_name overrun_err_flag
set_db -quiet inst:uart_top/overrun_err_flag_reg .single_bit_orig_name overrun_err_flag
set_db -quiet pin:uart_top/overrun_err_flag_reg/Q .original_name overrun_err_flag/q
set_db -quiet inst:uart_top/parity_err_flag_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/parity_err_flag_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/parity_err_flag_reg .original_name parity_err_flag
set_db -quiet inst:uart_top/parity_err_flag_reg .single_bit_orig_name parity_err_flag
set_db -quiet pin:uart_top/parity_err_flag_reg/Q .original_name parity_err_flag/q
set_db -quiet inst:uart_top/rx_done_flag_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/rx_done_flag_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/rx_done_flag_reg .original_name rx_done_flag
set_db -quiet inst:uart_top/rx_done_flag_reg .single_bit_orig_name rx_done_flag
set_db -quiet pin:uart_top/rx_done_flag_reg/Q .original_name rx_done_flag/q
set_db -quiet inst:uart_top/tx_done_flag_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/tx_done_flag_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/tx_done_flag_reg .original_name tx_done_flag
set_db -quiet inst:uart_top/tx_done_flag_reg .single_bit_orig_name tx_done_flag
set_db -quiet pin:uart_top/tx_done_flag_reg/Q .original_name tx_done_flag/q
set_db -quiet inst:uart_top/rx_ie_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/rx_ie_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/rx_ie_reg .original_name rx_ie
set_db -quiet inst:uart_top/rx_ie_reg .single_bit_orig_name rx_ie
set_db -quiet pin:uart_top/rx_ie_reg/Q .original_name rx_ie/q
set_db -quiet inst:uart_top/dbits_sel_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/dbits_sel_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/dbits_sel_reg_0 .original_name {{dbits_sel[0]}}
set_db -quiet inst:uart_top/dbits_sel_reg_0 .single_bit_orig_name {dbits_sel[0]}
set_db -quiet pin:uart_top/dbits_sel_reg_0/Q .original_name {dbits_sel[0]/q}
set_db -quiet inst:uart_top/bauddiv_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/bauddiv_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/bauddiv_reg_2 .original_name {{bauddiv[2]}}
set_db -quiet inst:uart_top/bauddiv_reg_2 .single_bit_orig_name {bauddiv[2]}
set_db -quiet pin:uart_top/bauddiv_reg_2/Q .original_name {bauddiv[2]/q}
set_db -quiet inst:uart_top/bauddiv_reg_15 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/bauddiv_reg_15 .gint_phase_inversion false
set_db -quiet inst:uart_top/bauddiv_reg_15 .original_name {{bauddiv[15]}}
set_db -quiet inst:uart_top/bauddiv_reg_15 .single_bit_orig_name {bauddiv[15]}
set_db -quiet pin:uart_top/bauddiv_reg_15/Q .original_name {bauddiv[15]/q}
set_db -quiet inst:uart_top/dbits_sel_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/dbits_sel_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/dbits_sel_reg_1 .original_name {{dbits_sel[1]}}
set_db -quiet inst:uart_top/dbits_sel_reg_1 .single_bit_orig_name {dbits_sel[1]}
set_db -quiet pin:uart_top/dbits_sel_reg_1/Q .original_name {dbits_sel[1]/q}
set_db -quiet inst:uart_top/err_ie_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/err_ie_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/err_ie_reg .original_name err_ie
set_db -quiet inst:uart_top/err_ie_reg .single_bit_orig_name err_ie
set_db -quiet pin:uart_top/err_ie_reg/Q .original_name err_ie/q
set_db -quiet inst:uart_top/bauddiv_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/bauddiv_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/bauddiv_reg_0 .original_name {{bauddiv[0]}}
set_db -quiet inst:uart_top/bauddiv_reg_0 .single_bit_orig_name {bauddiv[0]}
set_db -quiet pin:uart_top/bauddiv_reg_0/Q .original_name {bauddiv[0]/q}
set_db -quiet inst:uart_top/bauddiv_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/bauddiv_reg_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/bauddiv_reg_3 .original_name {{bauddiv[3]}}
set_db -quiet inst:uart_top/bauddiv_reg_3 .single_bit_orig_name {bauddiv[3]}
set_db -quiet pin:uart_top/bauddiv_reg_3/Q .original_name {bauddiv[3]/q}
set_db -quiet inst:uart_top/bauddiv_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/bauddiv_reg_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/bauddiv_reg_4 .original_name {{bauddiv[4]}}
set_db -quiet inst:uart_top/bauddiv_reg_4 .single_bit_orig_name {bauddiv[4]}
set_db -quiet pin:uart_top/bauddiv_reg_4/Q .original_name {bauddiv[4]/q}
set_db -quiet inst:uart_top/parity_sel_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/parity_sel_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/parity_sel_reg_0 .original_name {{parity_sel[0]}}
set_db -quiet inst:uart_top/parity_sel_reg_0 .single_bit_orig_name {parity_sel[0]}
set_db -quiet pin:uart_top/parity_sel_reg_0/Q .original_name {parity_sel[0]/q}
set_db -quiet inst:uart_top/parity_sel_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/parity_sel_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/parity_sel_reg_1 .original_name {{parity_sel[1]}}
set_db -quiet inst:uart_top/parity_sel_reg_1 .single_bit_orig_name {parity_sel[1]}
set_db -quiet pin:uart_top/parity_sel_reg_1/Q .original_name {parity_sel[1]/q}
set_db -quiet inst:uart_top/bauddiv_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/bauddiv_reg_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/bauddiv_reg_5 .original_name {{bauddiv[5]}}
set_db -quiet inst:uart_top/bauddiv_reg_5 .single_bit_orig_name {bauddiv[5]}
set_db -quiet pin:uart_top/bauddiv_reg_5/Q .original_name {bauddiv[5]/q}
set_db -quiet inst:uart_top/rx_en_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/rx_en_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/rx_en_reg .original_name rx_en
set_db -quiet inst:uart_top/rx_en_reg .single_bit_orig_name rx_en
set_db -quiet pin:uart_top/rx_en_reg/Q .original_name rx_en/q
set_db -quiet inst:uart_top/bauddiv_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/bauddiv_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/bauddiv_reg_1 .original_name {{bauddiv[1]}}
set_db -quiet inst:uart_top/bauddiv_reg_1 .single_bit_orig_name {bauddiv[1]}
set_db -quiet pin:uart_top/bauddiv_reg_1/Q .original_name {bauddiv[1]/q}
set_db -quiet inst:uart_top/stop_sel_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/stop_sel_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/stop_sel_reg .original_name stop_sel
set_db -quiet inst:uart_top/stop_sel_reg .single_bit_orig_name stop_sel
set_db -quiet pin:uart_top/stop_sel_reg/Q .original_name stop_sel/q
set_db -quiet inst:uart_top/bauddiv_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/bauddiv_reg_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/bauddiv_reg_7 .original_name {{bauddiv[7]}}
set_db -quiet inst:uart_top/bauddiv_reg_7 .single_bit_orig_name {bauddiv[7]}
set_db -quiet pin:uart_top/bauddiv_reg_7/Q .original_name {bauddiv[7]/q}
set_db -quiet inst:uart_top/bauddiv_reg_8 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/bauddiv_reg_8 .gint_phase_inversion false
set_db -quiet inst:uart_top/bauddiv_reg_8 .original_name {{bauddiv[8]}}
set_db -quiet inst:uart_top/bauddiv_reg_8 .single_bit_orig_name {bauddiv[8]}
set_db -quiet pin:uart_top/bauddiv_reg_8/Q .original_name {bauddiv[8]/q}
set_db -quiet inst:uart_top/tx_en_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/tx_en_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/tx_en_reg .original_name tx_en
set_db -quiet inst:uart_top/tx_en_reg .single_bit_orig_name tx_en
set_db -quiet pin:uart_top/tx_en_reg/Q .original_name tx_en/q
set_db -quiet inst:uart_top/tx_ie_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/tx_ie_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/tx_ie_reg .original_name tx_ie
set_db -quiet inst:uart_top/tx_ie_reg .single_bit_orig_name tx_ie
set_db -quiet pin:uart_top/tx_ie_reg/Q .original_name tx_ie/q
set_db -quiet inst:uart_top/uart_en_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/uart_en_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/uart_en_reg .original_name uart_en
set_db -quiet inst:uart_top/uart_en_reg .single_bit_orig_name uart_en
set_db -quiet pin:uart_top/uart_en_reg/Q .original_name uart_en/q
set_db -quiet inst:uart_top/bauddiv_reg_9 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/bauddiv_reg_9 .gint_phase_inversion false
set_db -quiet inst:uart_top/bauddiv_reg_9 .original_name {{bauddiv[9]}}
set_db -quiet inst:uart_top/bauddiv_reg_9 .single_bit_orig_name {bauddiv[9]}
set_db -quiet pin:uart_top/bauddiv_reg_9/Q .original_name {bauddiv[9]/q}
set_db -quiet inst:uart_top/bauddiv_reg_10 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/bauddiv_reg_10 .gint_phase_inversion false
set_db -quiet inst:uart_top/bauddiv_reg_10 .original_name {{bauddiv[10]}}
set_db -quiet inst:uart_top/bauddiv_reg_10 .single_bit_orig_name {bauddiv[10]}
set_db -quiet pin:uart_top/bauddiv_reg_10/Q .original_name {bauddiv[10]/q}
set_db -quiet inst:uart_top/bauddiv_reg_11 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/bauddiv_reg_11 .gint_phase_inversion false
set_db -quiet inst:uart_top/bauddiv_reg_11 .original_name {{bauddiv[11]}}
set_db -quiet inst:uart_top/bauddiv_reg_11 .single_bit_orig_name {bauddiv[11]}
set_db -quiet pin:uart_top/bauddiv_reg_11/Q .original_name {bauddiv[11]/q}
set_db -quiet inst:uart_top/bauddiv_reg_12 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/bauddiv_reg_12 .gint_phase_inversion false
set_db -quiet inst:uart_top/bauddiv_reg_12 .original_name {{bauddiv[12]}}
set_db -quiet inst:uart_top/bauddiv_reg_12 .single_bit_orig_name {bauddiv[12]}
set_db -quiet pin:uart_top/bauddiv_reg_12/Q .original_name {bauddiv[12]/q}
set_db -quiet inst:uart_top/bauddiv_reg_13 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/bauddiv_reg_13 .gint_phase_inversion false
set_db -quiet inst:uart_top/bauddiv_reg_13 .original_name {{bauddiv[13]}}
set_db -quiet inst:uart_top/bauddiv_reg_13 .single_bit_orig_name {bauddiv[13]}
set_db -quiet pin:uart_top/bauddiv_reg_13/Q .original_name {bauddiv[13]/q}
set_db -quiet inst:uart_top/bauddiv_reg_14 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/bauddiv_reg_14 .gint_phase_inversion false
set_db -quiet inst:uart_top/bauddiv_reg_14 .original_name {{bauddiv[14]}}
set_db -quiet inst:uart_top/bauddiv_reg_14 .single_bit_orig_name {bauddiv[14]}
set_db -quiet pin:uart_top/bauddiv_reg_14/Q .original_name {bauddiv[14]/q}
set_db -quiet inst:uart_top/bauddiv_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/bauddiv_reg_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/bauddiv_reg_6 .original_name {{bauddiv[6]}}
set_db -quiet inst:uart_top/bauddiv_reg_6 .single_bit_orig_name {bauddiv[6]}
set_db -quiet pin:uart_top/bauddiv_reg_6/Q .original_name {bauddiv[6]/q}
# BEGIN PMBIST SECTION
# END PMBIST SECTION
# BEGIN PHYSICAL ANNOTATION SECTION
# END PHYSICAL ANNOTATION SECTION
# BEGIN GLO TBR TABLE
set_db -quiet design:uart_top .set_boundary_change_new {start restore}
set_db -quiet design:uart_top .set_boundary_change_new {finish restore}
# END GLO TBR TABLE
set_db -quiet source_verbose true
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 22.17-s071_1
## flowkit v22.15-s003_1
## Written on 13:11:22 14-Oct 2026
#############################################################
#####   Flow Definitions   ##################################

#############################################################
#####   Step Definitions   ##################################


#############################################################
#####   Attribute Definitions   #############################

if {[is_attribute flow_edit_end_steps -obj_type root]} {set_db flow_edit_end_steps {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_db flow_edit_start_steps {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_db flow_setup_config {HUDDLE {!!map {}}}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type {}}
if {[is_attribute flow_template_tools -obj_type root]} {set_db flow_template_tools {}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version {}}
if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}


#############################################################
#####   Flow History   ######################################

if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}
if {[is_attribute flow_plugin_steps -obj_type root]} {set_db flow_plugin_steps {}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type {}}
if {[is_attribute flow_template_tools -obj_type root]} {set_db flow_template_tools {}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {}}
if {[is_attribute flow_remark -obj_type root]} {set_db flow_remark {}}
if {[is_attribute flow_features -obj_type root]} {set_db flow_features {}}
if {[is_attribute flow_feature_values -obj_type root]} {set_db flow_feature_values {}}
if {[is_attribute flow_write_db_args -obj_type root]} {set_db flow_write_db_args {}}
if {[is_attribute flow_write_db_sdc -obj_type root]} {set_db flow_write_db_sdc true}
if {[is_attribute flow_write_db_common -obj_type root]} {set_db flow_write_db_common false}
if {[is_attribute flow_post_db_overwrite -obj_type root]} {set_db flow_post_db_overwrite {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_last -obj_type root]} {set_db flow_step_last {}}
if {[is_attribute flow_step_current -obj_type root]} {set_db flow_step_current {}}
if {[is_attribute flow_step_canonical_current -obj_type root]} {set_db flow_step_canonical_current {}}
if {[is_attribute flow_step_next -obj_type root]} {set_db flow_step_next {}}
if {[is_attribute flow_working_directory -obj_type root]} {set_db flow_working_directory .}
if {[is_attribute flow_branch -obj_type root]} {set_db flow_branch {}}
if {[is_attribute flow_caller_data -obj_type root]} {set_db flow_caller_data {}}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_db flow_metrics_snapshot_uuid {}}
if {[is_attribute flow_starting_db -obj_type root]} {set_db flow_starting_db {}}
if {[is_attribute flow_db_directory -obj_type root]} {set_db flow_db_directory dbs}
if {[is_attribute flow_report_directory -obj_type root]} {set_db flow_report_directory reports}
if {[is_attribute flow_log_directory -obj_type root]} {set_db flow_log_directory logs}
if {[is_attribute flow_mail_to -obj_type root]} {set_db flow_mail_to {}}
if {[is_attribute flow_exit_when_done -obj_type root]} {set_db flow_exit_when_done false}
if {[is_attribute flow_mail_on_error -obj_type root]} {set_db flow_mail_on_error false}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_history -obj_type root]} {set_db flow_history {}}
if {[is_attribute flow_step_last_status -obj_type root]} {set_db flow_step_last_status not_run}
if {[is_attribute flow_step_last_msg -obj_type root]} {set_db flow_step_last_msg {}}
if {[is_attribute flow_run_tag -obj_type root]} {set_db flow_run_tag {}}
if {[is_attribute flow_current_cache -obj_type root]} {set_db flow_current_cache {}}
if {[is_attribute flow_step_order_cache -obj_type root]} {set_db flow_step_order_cache {}}
if {[is_attribute flow_step_results_cache -obj_type root]} {set_db flow_step_results_cache {}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_execute_in_global -obj_type root]} {set_db flow_execute_in_global true}
if {[is_attribute flow_overwrite_db -obj_type root]} {set_db flow_overwrite_db false}
if {[is_attribute flow_print_run_information -obj_type root]} {set_db flow_print_run_information false}
if {[is_attribute flow_verbose -obj_type root]} {set_db flow_verbose true}
if {[is_attribute flow_print_run_information_full -obj_type root]} {set_db flow_print_run_information_full false}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_init_header_tcl -obj_type root]} {set_db flow_init_header_tcl {}}
if {[is_attribute flow_init_footer_tcl -obj_type root]} {set_db flow_init_footer_tcl {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_db flow_edit_start_steps {}}
if {[is_attribute flow_edit_end_steps -obj_type root]} {set_db flow_edit_end_steps {}}
if {[is_attribute flow_step_last_number -obj_type root]} {set_db flow_step_last_number 0}
if {[is_attribute flow_autoload_applets -obj_type root]} {set_db flow_autoload_applets false}
if {[is_attribute flow_autoload_dir -obj_type root]} {set_db flow_autoload_dir error}
if {[is_attribute flow_skip_auto_db_save -obj_type root]} {set_db flow_skip_auto_db_save true}
if {[is_attribute flow_skip_auto_generate_metrics -obj_type root]} {set_db flow_skip_auto_generate_metrics false}
if {[is_attribute flow_top -obj_type root]} {set_db flow_top {}}
if {[is_attribute flow_hier_path -obj_type root]} {set_db flow_hier_path {}}
if {[is_attribute flow_schedule -obj_type root]} {set_db flow_schedule {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_script -obj_type root]} {set_db flow_script {}}
if {[is_attribute flow_yaml_script -obj_type root]} {set_db flow_yaml_script {}}
if {[is_attribute flow_cla_enabled_features -obj_type root]} {set_db flow_cla_enabled_features {}}
if {[is_attribute flow_cla_inject_tcl -obj_type root]} {set_db flow_cla_inject_tcl {}}
if {[is_attribute flow_error_message -obj_type root]} {set_db flow_error_message {}}
if {[is_attribute flow_error_errorinfo -obj_type root]} {set_db flow_error_errorinfo {}}
if {[is_attribute flow_exclude_time_for_init_flow -obj_type root]} {set_db flow_exclude_time_for_init_flow false}
if {[is_attribute flow_error_write_db -obj_type root]} {set_db flow_error_write_db true}
if {[is_attribute flow_advanced_metric_isolation -obj_type root]} {set_db flow_advanced_metric_isolation flow}
if {[is_attribute flow_yaml_root -obj_type root]} {set_db flow_yaml_root {}}
if {[is_attribute flow_yaml_root_dir -obj_type root]} {set_db flow_yaml_root_dir {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_db flow_setup_config {HUDDLE {!!map {}}}}

#############################################################
#####   User Defined Attributes   ###########################

