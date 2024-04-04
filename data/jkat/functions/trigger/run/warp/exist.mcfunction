# 存在地标
scoreboard players operation @s jkat.wait = #wait_warp jkat.mem
scoreboard players set @s[gamemode=creative] jkat.wait 5
tellraw @s [{"text": "正在前往地标","color": "gold"},{"score":{"name": "@s","objective": "jkat.warp.num"},"color": "yellow"},"..."]