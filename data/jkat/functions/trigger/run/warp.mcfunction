# 更新
function jkat:trigger/update

# 去地标
execute at @e[limit=1,tag=jkat_marker_tp] run setblock ~ ~ ~ end_gateway{Age: 222, ExactTeleport: 1b, ExitPortal: {X: 0, Y: 0, Z: 0}} destroy
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
function jkat:tp_point
tellraw @s [{"text": "已来到地标","color": "gold"},{"score":{"name": "@s","objective": "jkat.warp.num"},"color": "yellow"},"！"]