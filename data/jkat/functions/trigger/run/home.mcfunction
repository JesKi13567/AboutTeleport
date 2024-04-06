# 更新
function jkat:trigger/update

# 回家
function jkat:trigger/point/start

execute as @s[scores={jkat.home.num=1}] run function jkat:trigger/run/home/1
execute as @s[scores={jkat.home.num=2}] run function jkat:trigger/run/home/2
execute as @s[scores={jkat.home.num=3}] run function jkat:trigger/run/home/3
execute as @s[scores={jkat.home.num=4}] run function jkat:trigger/run/home/4
execute as @s[scores={jkat.home.num=5}] run function jkat:trigger/run/home/5

execute if entity @e[tag=jkat_point_portal] run tellraw @s [{"text": "已回到家","color": "gold"},{"score":{"name": "@s","objective": "jkat.home.num"},"color": "yellow"},"！"]

function jkat:trigger/point/end