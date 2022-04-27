transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {game_7_1200mv_85c_slow.vo}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/Project/Lab6 {C:/intelFPGA_lite/18.1/Project/Lab6/win_tb.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  win_tb

add wave *
view structure
view signals
run -all
