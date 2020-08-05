vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../fractcam_d8xk5_update.srcs/sources_1/imports/code/fractcam_w20/fractcam1x6.v" \
"../fractcam_d8xk5_update.srcs/sources_1/imports/code/fractcam_w20/DBLOCK32X5.v" \
"../fractcam_d8xk5_update.srcs/sources_1/imports/code/fractcam_w20/mux5bit.v" \
"../fractcam_d8xk5_update.srcs/sources_1/imports/code/fractcam_w20/srl_rf.v" \
"../fractcam_d8xk5_update.srcs/sources_1/imports/code/fractcam_w20/comparator.v" \
"../fractcam_d8xk5_update.srcs/sources_1/imports/code/fractcam_w20/DBLOCK64x5.v" \
"../fractcam_d8xk5_update.srcs/sources_1/new/cont_signal.v" \
"../fractcam_d8xk5_update.srcs/sources_1/imports/code/fractcam_w20/compare.v" \
"../fractcam_d8xk5_update.srcs/sources_1/imports/code/fractcam_w20/Demux.v" \
"../fractcam_d8xk5_update.srcs/sources_1/imports/code/updatelogic/counter_srl.v" \
"../fractcam_d8xk5_update.srcs/sources_1/imports/code/fractcam_w20/counter.v" \
"../fractcam_d8xk5_update.srcs/sources_1/imports/code/fractcam_w20/match_reduction.v" \
"../fractcam_d8xk5_update.srcs/sources_1/imports/code/fractcam_w20/frac_tcam.v" \
"../fractcam_d8xk5_update.srcs/sources_1/imports/code/fractcam_w20/update_logic.v" \
"../fractcam_d8xk5_update.srcs/sources_1/new/top_main.v" \
"../fractcam_d8xk5_update.srcs/sim_1/imports/fractcam_w20/top.v" \


vlog -work xil_defaultlib "glbl.v"

