execute as @p[tag=jkat_dimensional_traveller] at @s run forceload add 0 0
execute as @p[tag=jkat_dimensional_traveller] at @s run summon marker 0 1 0 {Tags:["jkat","jkat_marker_tp"]}
execute as @p[tag=jkat_dimensional_traveller] at @s run scoreboard players set @e[limit=1,sort=nearest,tag=jkat_marker_tp] jkat.mem -1
execute as @p[tag=jkat_dimensional_traveller] at @s if entity @e[distance=..500,tag=jkat_marker_tp,scores={jkat.mem=-1}] run scoreboard players set #pd1_ jkat.mem 1
effect give @p[tag=jkat_dimensional_traveller] resistance 12 10 true
execute in the_end run tp @p[tag=jkat_dimensional_traveller] 0 90 0
tellraw @p[tag=jkat_dimensional_traveller] {"text": "正在重置末地中继点...","color": "gold"}
schedule function jkat:op/point/init1 10s replace