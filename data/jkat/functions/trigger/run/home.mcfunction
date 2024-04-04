# 更新
function jkat:trigger/update

# 回家
execute at @e[limit=1,tag=jkat_marker_tp] run setblock ~ ~ ~ end_gateway{Age: 222, ExactTeleport: 1b, ExitPortal: {X: 0, Y: 0, Z: 0}} destroy
execute as @s[scores={jkat.home.num=1}] run function jkat:trigger/run/home/1
execute as @s[scores={jkat.home.num=2}] run function jkat:trigger/run/home/2
execute as @s[scores={jkat.home.num=3}] run function jkat:trigger/run/home/3
execute as @s[scores={jkat.home.num=4}] run function jkat:trigger/run/home/4
execute as @s[scores={jkat.home.num=5}] run function jkat:trigger/run/home/5
tp @s @e[limit=1,tag=jkat_marker_tp]
effect give @s resistance 1 4 true
tellraw @s [{"text": "已回到家","color": "gold"},{"score":{"name": "@s","objective": "jkat.home.num"},"color": "yellow"},"！"]