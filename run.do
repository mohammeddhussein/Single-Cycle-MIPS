vlib work
vlog rtl/*.*v tb/*.*v
vsim -voptargs=+acc work.MIPS_TB
do wave.do
run -all