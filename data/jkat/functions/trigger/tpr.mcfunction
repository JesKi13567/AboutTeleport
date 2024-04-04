scoreboard players reset @s jkat.tpr
execute if score #ban_tpr jkat.mem matches 1 run tellraw @s {"text": "tpr模块被禁用了！","color": "gold"}
execute unless score #ban_tpr jkat.mem matches 1 run tellraw @s {"text": "正在随机传送...","color": "gold"}
execute unless score #ban_tpr jkat.mem matches 1 run scoreboard players set @s jkat.mode 2
execute unless score #ban_tpr jkat.mem matches 1 run scoreboard players operation @s jkat.wait = #wait_tpr jkat.mem
execute unless score #ban_tpr jkat.mem matches 1 run scoreboard players set @s[gamemode=creative] jkat.wait 5