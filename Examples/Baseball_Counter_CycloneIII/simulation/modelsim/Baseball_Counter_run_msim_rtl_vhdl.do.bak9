transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/CCSU/Logic Design CET-466/Project 6 - Baseball Counter VHDL/Baseball_Counter.vhd}

vcom -93 -work work {E:/CCSU/Logic Design CET-466/Project 6 - Baseball Counter VHDL/simulation/modelsim/Baseball_Counter.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  Baseball_Counter_TEST

add wave *
view structure
view signals
run -all
