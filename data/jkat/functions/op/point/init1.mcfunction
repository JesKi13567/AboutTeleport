execute as @p[tag=jkat_dimensional_traveller] at @s run forceload add 0 0
execute as @p[tag=jkat_dimensional_traveller] at @s run summon marker 0 1 0 {Tags:["jkat","jkat_marker_tp"]}
execute as @p[tag=jkat_dimensional_traveller] at @s run scoreboard players set @e[limit=1,sort=nearest,tag=jkat_marker_tp] jkat.mem 1
execute as @p[tag=jkat_dimensional_traveller] at @s if entity @e[distance=..500,tag=jkat_marker_tp,scores={jkat.mem=1}] run scoreboard players set #pd1 jkat.mem 1
tellraw @p[tag=jkat_dimensional_traveller] {"text": "世界中继点重置完成！","color": "gold"}
execute if score #pd0 jkat.mem matches 1 run tellraw @p[tag=jkat_dimensional_traveller] {"text": "主世界中继点是好的。","color": "gold"}
execute if score #pd1_ jkat.mem matches 1 run tellraw @p[tag=jkat_dimensional_traveller] {"text": "下界中继点是好的。","color": "gold"}
execute if score #pd1 jkat.mem matches 1 run tellraw @p[tag=jkat_dimensional_traveller] {"text": "末地中继点是好的。","color": "gold"}
execute as @p[tag=jkat_dimensional_traveller] run function jkat:trigger/run/back
tag @a remove jkat_dimensional_traveller