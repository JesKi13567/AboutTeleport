# 设置家
execute if score #num_home jkat.mem matches 1.. as @s[scores={jkat.sethome=1}] run function jkat:trigger/run/home/set/1
execute if score #num_home jkat.mem matches 2.. as @s[scores={jkat.sethome=2}] run function jkat:trigger/run/home/set/2
execute if score #num_home jkat.mem matches 3.. as @s[scores={jkat.sethome=3}] run function jkat:trigger/run/home/set/3
execute if score #num_home jkat.mem matches 4.. as @s[scores={jkat.sethome=4}] run function jkat:trigger/run/home/set/4
execute if score #num_home jkat.mem matches 5.. as @s[scores={jkat.sethome=5}] run function jkat:trigger/run/home/set/5

# 设置不了
execute if score #num_home jkat.mem < @s jkat.sethome run tellraw @s {"text": "根据管理员设置，你不能设置这个家！","color": "gold"}
scoreboard players reset @s jkat.sethome