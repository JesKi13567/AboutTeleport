scoreboard players remove #temp jkat.mem 1
tp @s ~ ~ ~

# 特效
particle witch ~ ~ ~ 0.2 0.2 0.2 0.01 20
playsound item.chorus_fruit.teleport player @a[distance=..8]

# 循环
execute if score #temp jkat.mem matches 1.. unless block ^ ^ ^1 #jkat:air run scoreboard players reset #temp jkat.mem
execute if score #temp jkat.mem matches 1.. positioned ^ ^ ^1 run function jkat:pearl/use/line_loop