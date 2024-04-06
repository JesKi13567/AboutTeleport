scoreboard players remove #num_lift_v jkat.mem 1
scoreboard players remove #num_lift_h jkat.mem 1
execute if score #lift_v jkat.mem < #num_lift_v jkat.mem run scoreboard players reset #lift_v jkat.mem
execute if score #lift_h jkat.mem < #num_lift_h jkat.mem run scoreboard players reset #lift_h jkat.mem
scoreboard players add #num_lift_v jkat.mem 1
scoreboard players add #num_lift_h jkat.mem 1

# 避免爆炸特效
execute unless score #lift_v jkat.mem matches 0.. run function jkat:lift/done_
execute unless score #lift_h jkat.mem matches 0.. run function jkat:lift/done_