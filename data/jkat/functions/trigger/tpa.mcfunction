# 检测模块禁用
execute if score #ban_tpa jkat.mem matches 1 run tellraw @s[scores={jkat.tpa=1..}] {"text": "管理员禁用了tpa模块！","color": "gold"}
execute unless score #ban_tpa jkat.mem matches 1 as @s[scores={jkat.tpa=1..}] run function jkat:trigger/run/tpa

execute if score #ban_tpahere jkat.mem matches 1 run tellraw @s[scores={jkat.tpahere=1..}] {"text": "管理员禁用了tpahere模块！","color": "gold"}
execute unless score #ban_tpahere jkat.mem matches 1 as @s[scores={jkat.tpahere=1..}] run function jkat:trigger/run/tpa

# 重置
scoreboard players reset @s jkat.tpa
scoreboard players reset @s jkat.tpahere