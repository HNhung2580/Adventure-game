transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/Project/Lab6 {C:/intelFPGA_lite/18.1/Project/Lab6/game.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/Project/Lab6 {C:/intelFPGA_lite/18.1/Project/Lab6/room.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/Project/Lab6 {C:/intelFPGA_lite/18.1/Project/Lab6/sword.v}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/Project/Lab6 {C:/intelFPGA_lite/18.1/Project/Lab6/die_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  die_tb

add wave *
view structure
view signals
run -all
