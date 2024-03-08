
restart

add_force A -radix hex 00000001
add_force B -radix hex 00000001

add_force clk 1 {0 5ns} -repeat_every 10ns

add_force rst 0
run 10ns
add_force rst 1
run 10ns
add_force rst 0
run 10 ns
while {[get_value -radix bin done] != 1} {
run 10 ns
}