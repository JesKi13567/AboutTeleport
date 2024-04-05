tellraw @s {"text": "传送被接受，请不要移动...","color": "gold"}
scoreboard players set @s jkat.tpa.flag.tp 1
scoreboard players operation @s jkat.wait = #wait_tpa jkat.mem
scoreboard players set @s[gamemode=creative] jkat.wait 5