scoreboard players reset @s jkat.spawn
execute unless entity @e[limit=1,tag=jkat.marker.spawn] run tellraw @s {"text": "没有主城传送点，传送失败。","color": "gold"}
execute if entity @e[limit=1,tag=jkat.marker.spawn] run tellraw @s {"text": "正在前往主城传送点...","color": "gold"}
execute if entity @e[limit=1,tag=jkat.marker.spawn] run scoreboard players set @s jkat.mode 1
execute if entity @e[limit=1,tag=jkat.marker.spawn] run scoreboard players operation @s jkat.wait = #wait_spawn jkat.mem
execute if entity @e[limit=1,tag=jkat.marker.spawn] run scoreboard players set @s[gamemode=creative] jkat.wait 5