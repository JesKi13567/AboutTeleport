# 存在家
scoreboard players operation @s jkat.wait = #wait_home jkat.mem
scoreboard players set @s[gamemode=creative] jkat.wait 5
tellraw @s [{"text": "正在返回家","color": "gold"},{"score":{"name": "@s","objective": "jkat.home.num"},"color": "yellow"},"..."]