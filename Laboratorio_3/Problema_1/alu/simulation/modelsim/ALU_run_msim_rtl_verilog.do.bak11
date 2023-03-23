transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/lpm_ver
vmap lpm_ver ./verilog_libs/lpm_ver
vlog -vlog01compat -work lpm_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/220model.v}

vlib verilog_libs/sgate_ver
vmap sgate_ver ./verilog_libs/sgate_ver
vlog -vlog01compat -work sgate_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/sgate.v}

vlib verilog_libs/altera_mf_ver
vmap altera_mf_ver ./verilog_libs/altera_mf_ver
vlog -vlog01compat -work altera_mf_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/altera_mf.v}

vlib verilog_libs/altera_lnsim_ver
vmap altera_lnsim_ver ./verilog_libs/altera_lnsim_ver
vlog -sv -work altera_lnsim_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/altera_lnsim.sv}

vlib verilog_libs/cyclonev_ver
vmap cyclonev_ver ./verilog_libs/cyclonev_ver
vlog -vlog01compat -work cyclonev_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/mentor/cyclonev_hmi_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/cyclonev_atoms.v}

vlib verilog_libs/cyclonev_hssi_ver
vmap cyclonev_hssi_ver ./verilog_libs/cyclonev_hssi_ver
vlog -vlog01compat -work cyclonev_hssi_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/mentor/cyclonev_hssi_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_hssi_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/cyclonev_hssi_atoms.v}

vlib verilog_libs/cyclonev_pcie_hip_ver
vmap cyclonev_pcie_hip_ver ./verilog_libs/cyclonev_pcie_hip_ver
vlog -vlog01compat -work cyclonev_pcie_hip_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/mentor/cyclonev_pcie_hip_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_pcie_hip_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/cyclonev_pcie_hip_atoms.v}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/dmeji/OneDrive\ -\ Estudiantes\ ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu {C:/Users/dmeji/OneDrive - Estudiantes ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu/mod_or.sv}
vlog -sv -work work +incdir+C:/Users/dmeji/OneDrive\ -\ Estudiantes\ ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu {C:/Users/dmeji/OneDrive - Estudiantes ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu/mod_xor.sv}
vlog -sv -work work +incdir+C:/Users/dmeji/OneDrive\ -\ Estudiantes\ ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu {C:/Users/dmeji/OneDrive - Estudiantes ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu/sum_1bit.sv}
vlog -sv -work work +incdir+C:/Users/dmeji/OneDrive\ -\ Estudiantes\ ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu {C:/Users/dmeji/OneDrive - Estudiantes ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu/mod_sum.sv}
vlog -sv -work work +incdir+C:/Users/dmeji/OneDrive\ -\ Estudiantes\ ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu {C:/Users/dmeji/OneDrive - Estudiantes ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu/mod_not.sv}
vlog -sv -work work +incdir+C:/Users/dmeji/OneDrive\ -\ Estudiantes\ ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu {C:/Users/dmeji/OneDrive - Estudiantes ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu/mod_and.sv}
vlog -sv -work work +incdir+C:/Users/dmeji/OneDrive\ -\ Estudiantes\ ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu {C:/Users/dmeji/OneDrive - Estudiantes ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu/mod_alu.sv}
vlog -sv -work work +incdir+C:/Users/dmeji/OneDrive\ -\ Estudiantes\ ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu {C:/Users/dmeji/OneDrive - Estudiantes ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu/mod_mux2.sv}
vlog -sv -work work +incdir+C:/Users/dmeji/OneDrive\ -\ Estudiantes\ ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu {C:/Users/dmeji/OneDrive - Estudiantes ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu/mod_compl.sv}
vlog -sv -work work +incdir+C:/Users/dmeji/OneDrive\ -\ Estudiantes\ ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu {C:/Users/dmeji/OneDrive - Estudiantes ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu/mod_compare.sv}
vlog -sv -work work +incdir+C:/Users/dmeji/OneDrive\ -\ Estudiantes\ ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu {C:/Users/dmeji/OneDrive - Estudiantes ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu/mod_lshift_a.sv}
vlog -sv -work work +incdir+C:/Users/dmeji/OneDrive\ -\ Estudiantes\ ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu {C:/Users/dmeji/OneDrive - Estudiantes ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu/mod_lshift.sv}
vlog -sv -work work +incdir+C:/Users/dmeji/OneDrive\ -\ Estudiantes\ ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu {C:/Users/dmeji/OneDrive - Estudiantes ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu/mod_rshift.sv}
vlog -sv -work work +incdir+C:/Users/dmeji/OneDrive\ -\ Estudiantes\ ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu {C:/Users/dmeji/OneDrive - Estudiantes ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu/mod_rshift_a.sv}
vlog -sv -work work +incdir+C:/Users/dmeji/OneDrive\ -\ Estudiantes\ ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu {C:/Users/dmeji/OneDrive - Estudiantes ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu/mod_mux16.sv}

vlog -sv -work work +incdir+C:/Users/dmeji/OneDrive\ -\ Estudiantes\ ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu {C:/Users/dmeji/OneDrive - Estudiantes ITCR/TEC/Semestres/IS2023/Taller_de_Diseno_Digital/GitHub_Labs/dmejias08_digital_design_lab_2023/Laboratorio_3/Problema_1/alu/tb_mod_alu.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb_mod_alu

add wave *
view structure
view signals
run -all
