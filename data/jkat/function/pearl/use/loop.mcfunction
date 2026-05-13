scoreboard players remove @s jkat.distance 1
tp @s ~ ~ ~

# 特效
particle witch ~ ~ ~ 0.2 0.2 0.2 0.01 20
playsound item.chorus_fruit.teleport player @a

# 循环
execute as @s[scores={jkat.distance=1..}] unless block ^ ^ ^1 #jkat:air run scoreboard players reset @s jkat.distance
execute as @s[scores={jkat.distance=1..}] positioned ^ ^ ^1 run function jkat:pearl/use/loop
