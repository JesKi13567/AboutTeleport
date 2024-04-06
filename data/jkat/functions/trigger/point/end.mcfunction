# 传送至中继点
execute at @e[tag=jkat_marker_tp] run function jkat:op/point/block
tp @s @e[limit=1,tag=jkat_point_portal]

execute unless entity @e[tag=jkat_point_portal] run tellraw @s {"text": "目的地维度的传送中继点消失，请联系管理员！","color": "gold"}

# 清理
tag @e[tag=jkat_marker_tp] remove jkat_point_portal
tag @s remove jkat_point_player
effect give @s resistance 1 4 true