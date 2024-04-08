$scoreboard players reset #warp jkat.warp.d.$(num)
$scoreboard players reset #warp jkat.warp.x.$(num)
$scoreboard players reset #warp jkat.warp.y.$(num)
$scoreboard players reset #warp jkat.warp.z.$(num)
$tellraw @s ["",{"text": "成功清除地标","color": "gold"},{"text": "$(num)","color": "yellow"},{"text": "！","color": "gold"}]