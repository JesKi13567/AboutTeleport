# 删除传送中继点
execute at @e[limit=1,sort=nearest,tag=jkat_marker_tp] run setblock ~ ~ ~ air
execute if entity @e[limit=1,sort=nearest,tag=jkat_marker_tp] run tellraw @s {"text": "已删除当前维度的传送中继点！","color": "gold"}
execute unless entity @e[limit=1,sort=nearest,tag=jkat_marker_tp] run tellraw @s {"text": "当前维度没有传送中继点！","color": "gold"}
kill @e[limit=1,sort=nearest,tag=jkat_marker_tp]