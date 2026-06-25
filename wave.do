onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/clk
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/rst
add wave -noupdate -expand -group MIPS /MIPS_TB/out_check
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/pc
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/instr
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/instr_addr
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/sign_imm
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/pc_plus4
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/pc_branch
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/mem_rd_data
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/rd_data2
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/src_a
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/src_b
add wave -noupdate -expand -group MIPS -radix hexadecimal -childformat {{{/MIPS_TB/DUT/alu_result[31]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[30]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[29]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[28]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[27]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[26]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[25]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[24]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[23]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[22]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[21]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[20]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[19]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[18]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[17]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[16]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[15]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[14]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[13]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[12]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[11]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[10]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[9]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[8]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[7]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[6]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[5]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[4]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[3]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[2]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[1]} -radix hexadecimal} {{/MIPS_TB/DUT/alu_result[0]} -radix hexadecimal}} -subitemconfig {{/MIPS_TB/DUT/alu_result[31]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[30]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[29]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[28]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[27]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[26]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[25]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[24]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[23]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[22]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[21]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[20]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[19]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[18]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[17]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[16]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[15]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[14]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[13]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[12]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[11]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[10]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[9]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[8]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[7]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[6]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[5]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[4]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[3]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[2]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[1]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/alu_result[0]} {-height 15 -radix hexadecimal}} /MIPS_TB/DUT/alu_result
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/wr_data3
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/wr_addr3
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/alu_control
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/jump
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/branch
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/mem_to_reg
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/alu_src
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/reg_dst
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/zero
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/reg_write
add wave -noupdate -expand -group MIPS -radix hexadecimal /MIPS_TB/DUT/mem_write
add wave -noupdate -expand -group CTRL_UNIT /MIPS_TB/DUT/ctrl_unit_inst/funct
add wave -noupdate -expand -group CTRL_UNIT /MIPS_TB/DUT/ctrl_unit_inst/opcode
add wave -noupdate -expand -group CTRL_UNIT /MIPS_TB/DUT/ctrl_unit_inst/mem_to_reg
add wave -noupdate -expand -group CTRL_UNIT /MIPS_TB/DUT/ctrl_unit_inst/mem_write
add wave -noupdate -expand -group CTRL_UNIT /MIPS_TB/DUT/ctrl_unit_inst/branch
add wave -noupdate -expand -group CTRL_UNIT /MIPS_TB/DUT/ctrl_unit_inst/alu_control
add wave -noupdate -expand -group CTRL_UNIT /MIPS_TB/DUT/ctrl_unit_inst/alu_src
add wave -noupdate -expand -group CTRL_UNIT /MIPS_TB/DUT/ctrl_unit_inst/reg_dst
add wave -noupdate -expand -group CTRL_UNIT /MIPS_TB/DUT/ctrl_unit_inst/reg_write
add wave -noupdate -expand -group CTRL_UNIT /MIPS_TB/DUT/ctrl_unit_inst/jump
add wave -noupdate -expand -group CTRL_UNIT /MIPS_TB/DUT/ctrl_unit_inst/alu_op
add wave -noupdate -expand -group ALU /MIPS_TB/DUT/alu_inst/A
add wave -noupdate -expand -group ALU /MIPS_TB/DUT/alu_inst/B
add wave -noupdate -expand -group ALU /MIPS_TB/DUT/alu_inst/sel
add wave -noupdate -expand -group ALU /MIPS_TB/DUT/alu_inst/ALU_OUT
add wave -noupdate -expand -group ALU /MIPS_TB/DUT/alu_inst/zero
add wave -noupdate -expand -group PC_REG /MIPS_TB/DUT/pc_reg_inst/CLK
add wave -noupdate -expand -group PC_REG /MIPS_TB/DUT/pc_reg_inst/RST
add wave -noupdate -expand -group PC_REG /MIPS_TB/DUT/pc_reg_inst/PC
add wave -noupdate -expand -group PC_REG /MIPS_TB/DUT/pc_reg_inst/PC_next
add wave -noupdate -expand -group RegFile -radix hexadecimal -childformat {{{/MIPS_TB/DUT/register_file_inst/register_file[0]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[1]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[2]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[3]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[4]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[5]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[6]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[7]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[8]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[9]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[10]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[11]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[12]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[13]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[14]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[15]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[16]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[17]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[18]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[19]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[20]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[21]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[22]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[23]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[24]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[25]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[26]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[27]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[28]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[29]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[30]} -radix hexadecimal} {{/MIPS_TB/DUT/register_file_inst/register_file[31]} -radix hexadecimal}} -expand -subitemconfig {{/MIPS_TB/DUT/register_file_inst/register_file[0]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[1]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[2]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[3]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[4]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[5]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[6]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[7]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[8]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[9]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[10]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[11]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[12]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[13]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[14]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[15]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[16]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[17]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[18]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[19]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[20]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[21]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[22]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[23]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[24]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[25]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[26]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[27]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[28]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[29]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[30]} {-height 15 -radix hexadecimal} {/MIPS_TB/DUT/register_file_inst/register_file[31]} {-height 15 -radix hexadecimal}} /MIPS_TB/DUT/register_file_inst/register_file
add wave -noupdate -expand -group instr_ram /MIPS_TB/DUT/instr_mem/mem
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {170756 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {162144 ns} {207256 ns}
