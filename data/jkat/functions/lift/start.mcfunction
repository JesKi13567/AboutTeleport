## 电梯间
# up & down，中间隔 ud - 3 格
scoreboard players operation #lift_ud jkat.mem = #num_lift_ud jkat.mem
execute unless score #ban_lift_ud jkat.mem matches 1 if block ~ ~-1 ~ #jkat:lift/ud as @s[scores={jkat.check.jump=1..}] run function jkat:lift/ud_jump
execute unless score #ban_lift_ud jkat.mem matches 1 if block ~ ~-1 ~ #jkat:lift/ud as @s[scores={jkat.check.sneak=1..}] run function jkat:lift/ud_sneak

# facing，中间隔 fa - 3 格
scoreboard players operation #lift_fa jkat.mem = #num_lift_fa jkat.mem
execute unless score #ban_lift_fa jkat.mem matches 1 if block ~ ~-1 ~ #jkat:lift/fa as @s[scores={jkat.check.sneak=1..}] run function jkat:lift/fa_sneak