# 检测模块禁用
execute if score #ban_tpa jkat.mem matches 1 run tellraw @s[scores={jkat.tpa=1..}] {"text": "tpa模块被禁用了！","color": "gold"}
execute unless score #ban_tpa jkat.mem matches 1 as @s[scores={jkat.tpa=1..}] run function jkat:trigger/run/tpa/real

execute if score #ban_tpahere jkat.mem matches 1 run tellraw @s[scores={jkat.tpahere=1..}] {"text": "tpahere模块被禁用了！","color": "gold"}
execute unless score #ban_tpahere jkat.mem matches 1 as @s[scores={jkat.tpahere=1..}] run function jkat:trigger/run/tpa/real

# 重置
scoreboard players reset @s jkat.tpa
scoreboard players reset @s jkat.tpahere