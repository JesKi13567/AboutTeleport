scoreboard players reset @s jkat.back
execute if score #ban_back jkat.mem matches 1 run tellraw @s {"text": "管理员禁用了back模块！","color": "gold"}
execute unless score #ban_back jkat.mem matches 1 run tellraw @s {"text": "正在返回上一地点...","color": "gold"}
execute unless score #ban_back jkat.mem matches 1 run scoreboard players set @s jkat.mode 5
execute unless score #ban_back jkat.mem matches 1 run scoreboard players operation @s jkat.wait = #wait_back jkat.mem
execute unless score #ban_back jkat.mem matches 1 run scoreboard players set @s[gamemode=creative] jkat.wait 5