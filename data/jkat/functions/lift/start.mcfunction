## 电梯间
# vertical，中间隔 v - 3 格
scoreboard players operation #lift_v jkat.mem = #num_lift_v jkat.mem
execute unless score #ban_lift_v jkat.mem matches 1 if block ~ ~-1 ~ #jkat:lift/v as @s[scores={jkat.check.jump=1..}] run function jkat:lift/v_jump
execute unless score #ban_lift_v jkat.mem matches 1 if block ~ ~-1 ~ #jkat:lift/v as @s[scores={jkat.check.sneak=1..}] run function jkat:lift/v_sneak

# horizontal，中间隔 h - 3 格
scoreboard players operation #lift_h jkat.mem = #num_lift_h jkat.mem
execute unless score #ban_lift_h jkat.mem matches 1 if block ~ ~-1 ~ #jkat:lift/h as @s[scores={jkat.check.sneak=1..}] run function jkat:lift/h_sneak