vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../fractcam_c_d1024xk160.srcs/sources_1/imports/fractcam_w160/fractacam/fractcam1x6.v" \
"../fractcam_c_d1024xk160.srcs/sources_1/imports/fractcam_w160/fractacam/andD2slice.v" \
"../fractcam_c_d1024xk160.srcs/sources_1/imports/fractcam_w160/updatelogic/mux5bit.v" \
"../fractcam_c_d1024xk160.srcs/sources_1/imports/fractcam_w160/fractacam/and6.v" \
"../fractcam_c_d1024xk160.srcs/sources_1/imports/fractcam_w160/updatelogic/srl_rf.v" \
"../fractcam_c_d1024xk160.srcs/sources_1/imports/fractcam_w160/updatelogic/comparator.v" \
"../fractcam_c_d1024xk160.srcs/sources_1/imports/fractcam_w160/fractacam/DBLOCK32X5.v" \
"../fractcam_c_d1024xk160.srcs/sources_1/new/cont_signal.v" \
"../fractcam_c_d1024xk160.srcs/sources_1/imports/updatelogic/counter_srl.v" \
"../fractcam_c_d1024xk160.srcs/sources_1/imports/fractcam_w160/fractacam/andD6.v" \
"../fractcam_c_d1024xk160.srcs/sources_1/imports/fractcam_w160/updatelogic/compare.v" \
"../fractcam_c_d1024xk160.srcs/sources_1/imports/fractcam_w160/updatelogic/counter.v" \
"../fractcam_c_d1024xk160.srcs/sources_1/imports/fractcam_w160/fractacam/DBLOCK64x5.v" \
"../fractcam_c_d1024xk160.srcs/sources_1/imports/fractcam_w160/updatelogic/Demux.v" \
"../fractcam_c_d1024xk160.srcs/sources_1/imports/fractcam_w160/fractacam/andD2.v" \
"../fractcam_c_d1024xk160.srcs/sources_1/imports/fractcam_w160/fractacam/frac_tcam.v" \
"../fractcam_c_d1024xk160.srcs/sources_1/imports/fractcam_w160/updatelogic/update_logic.v" \
"../fractcam_c_d1024xk160.srcs/sources_1/imports/fractcam_w160/fractacam/match_reduction.v" \
"../fractcam_c_d1024xk160.srcs/sources_1/imports/fractcam_w160/updatelogic/top.v" \
"../fractcam_c_d1024xk160.srcs/sim_1/new/fractcam_tb.v" \


vlog -work xil_defaultlib "glbl.v"

