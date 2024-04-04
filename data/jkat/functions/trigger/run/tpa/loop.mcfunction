# 循环输出
scoreboard players add #temp jkat.mem 1
execute as @a if score @s jkat.id = #temp jkat.mem run tellraw @p[scores={jkat.show=1..}] ["",{"text": "--> ","color": "gray"},{"text": "[","color": "gray"},{"score":{"name": "@s","objective": "jkat.id"},"color": "yellow"},{"text": "]","color": "gray"},"  ",{"selector":"@s"}]
execute as @a if score @s jkat.id >= #temp jkat.mem run function jkat:trigger/run/tpa/loop