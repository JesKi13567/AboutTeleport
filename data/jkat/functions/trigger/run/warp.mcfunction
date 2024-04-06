# 更新
function jkat:trigger/update

# 去地标
function jkat:trigger/point/start

execute as @s[scores={jkat.warp.num=1}] run function jkat:trigger/run/warp/1
execute as @s[scores={jkat.warp.num=2}] run function jkat:trigger/run/warp/2
execute as @s[scores={jkat.warp.num=3}] run function jkat:trigger/run/warp/3
execute as @s[scores={jkat.warp.num=4}] run function jkat:trigger/run/warp/4
execute as @s[scores={jkat.warp.num=5}] run function jkat:trigger/run/warp/5
execute as @s[scores={jkat.warp.num=6}] run function jkat:trigger/run/warp/6
execute as @s[scores={jkat.warp.num=7}] run function jkat:trigger/run/warp/7
execute as @s[scores={jkat.warp.num=8}] run function jkat:trigger/run/warp/8
execute as @s[scores={jkat.warp.num=9}] run function jkat:trigger/run/warp/9
execute as @s[scores={jkat.warp.num=10}] run function jkat:trigger/run/warp/10

execute if entity @e[tag=jkat_point_portal] run tellraw @s [{"text": "已来到地标","color": "gold"},{"score":{"name": "@s","objective": "jkat.warp.num"},"color": "yellow"},"！"]

function jkat:trigger/point/end