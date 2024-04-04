scoreboard players remove #num_lift_ud jkat.mem 1
scoreboard players remove #num_lift_fa jkat.mem 1
execute if score #lift_ud jkat.mem < #num_lift_ud jkat.mem run scoreboard players reset #lift_ud jkat.mem
execute if score #lift_fa jkat.mem < #num_lift_fa jkat.mem run scoreboard players reset #lift_fa jkat.mem
scoreboard players add #num_lift_ud jkat.mem 1
scoreboard players add #num_lift_fa jkat.mem 1

# 避免爆炸特效
execute unless score #lift_ud jkat.mem matches 0.. run function jkat:lift/done_
execute unless score #lift_fa jkat.mem matches 0.. run function jkat:lift/done_