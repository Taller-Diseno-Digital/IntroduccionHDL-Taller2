transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Documentos/TEC/2023/I\ Semestre/Taller\ de\ Diseno\ Digital/VGA\ MODULE {D:/Documentos/TEC/2023/I Semestre/Taller de Diseno Digital/VGA MODULE/vga_sync.sv}
vlog -sv -work work +incdir+D:/Documentos/TEC/2023/I\ Semestre/Taller\ de\ Diseno\ Digital/VGA\ MODULE {D:/Documentos/TEC/2023/I Semestre/Taller de Diseno Digital/VGA MODULE/vga_decoder.sv}

vlog -sv -work work +incdir+D:/Documentos/TEC/2023/I\ Semestre/Taller\ de\ Diseno\ Digital/VGA\ MODULE {D:/Documentos/TEC/2023/I Semestre/Taller de Diseno Digital/VGA MODULE/vga_decoder_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  vga_decoder_tb

add wave *
view structure
view signals
run -all
