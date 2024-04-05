## 每刻执行
execute as @a[gamemode=!spectator] at @s run function jkat:player
execute at @e[tag=jkat_marker_portal] run data modify block ~ ~ ~ Age set value 222

# 设置
execute unless score #num_home jkat.mem matches 0..5 run scoreboard players set #num_home jkat.mem 5
execute unless score #wait_home jkat.mem matches 10.. run scoreboard players set #wait_home jkat.mem 100
execute unless score #wait_spawn jkat.mem matches 10.. run scoreboard players set #wait_spawn jkat.mem 100
execute unless score #wait_tpr jkat.mem matches 10.. run scoreboard players set #wait_tpr jkat.mem 100
execute unless score #wait_tpa jkat.mem matches 10.. run scoreboard players set #wait_tpa jkat.mem 100
execute unless score #wait_back jkat.mem matches 10.. run scoreboard players set #wait_back jkat.mem 100
execute unless score #wait_warp jkat.mem matches 10.. run scoreboard players set #wait_warp jkat.mem 100
execute unless score #wait_cd jkat.mem matches 10.. run scoreboard players set #wait_cd jkat.mem 100
execute unless score #num_lift_ud jkat.mem matches 5..131 run scoreboard players set #num_lift_ud jkat.mem 18
execute unless score #num_lift_fa jkat.mem matches 5..131 run scoreboard players set #num_lift_fa jkat.mem 18