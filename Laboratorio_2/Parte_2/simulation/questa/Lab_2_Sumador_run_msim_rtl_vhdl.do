transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Documentos/TEC/2023/I Semestre/Taller de Diseno Digital/Laboratorio 2/dmejias08_digital_design_lab_2023/Laboratorio_2/Parte_2/medio_sumador.vhd}
vcom -93 -work work {D:/Documentos/TEC/2023/I Semestre/Taller de Diseno Digital/Laboratorio 2/dmejias08_digital_design_lab_2023/Laboratorio_2/Parte_2/completo_sumador.vhd}
vcom -93 -work work {D:/Documentos/TEC/2023/I Semestre/Taller de Diseno Digital/Laboratorio 2/dmejias08_digital_design_lab_2023/Laboratorio_2/Parte_2/bit4_sumador.vhd}

