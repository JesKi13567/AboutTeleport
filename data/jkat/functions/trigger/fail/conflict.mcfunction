# 传送冲突
tellraw @s {"text": "冲突：你与其他玩家在同时传送，请稍后再试！","color": "gold"}
scoreboard players set @s jkat.mode 0
scoreboard players set @s jkat.wait 0