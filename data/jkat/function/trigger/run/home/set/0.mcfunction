scoreboard players reset #home.flag jkat.int
execute if dimension overworld if score #BAN.home.overworld jkat.int matches 1 run return run tellraw @s {text: "管理员禁用了此维度的home模块！", color: "gold"}
execute if dimension the_nether if score #BAN.home.the_nether jkat.int matches 1 run return run tellraw @s {text: "管理员禁用了此维度的home模块！", color: "gold"}
execute if dimension the_end if score #BAN.home.the_end jkat.int matches 1 run return run tellraw @s {text: "管理员禁用了此维度的home模块！", color: "gold"}

execute store result storage jk:at score.n int 1 run scoreboard players get @s jkat.sethome
execute if score @s[scores={jkat.sethome=1..}] jkat.sethome <= #NUM.home jkat.int run function jkat:trigger/run/home/set/1 with storage jk:at score
execute unless score #home.flag jkat.int matches 1 run tellraw @s {text: "你不能设置这个家！", color: "gold"}
scoreboard players reset @s jkat.sethome
