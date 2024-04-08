# 设置家
execute store result storage jkat:temp num int 1 run scoreboard players get @s jkat.sethome
function jkat:trigger/run/sethome_real with storage jkat:temp

# 设置不了
execute if score #num_home jkat.mem < @s jkat.sethome run tellraw @s {"text": "根据管理员设置，你不能设置这个家！","color": "gold"}
scoreboard players reset @s jkat.sethome