# 手动添加默认中继点
tag @s add jkat_dimensional_traveller
execute at @e[tag=jkat_marker_tp] run setblock ~ ~ ~ air
kill @e[tag=jkat_marker_tp]
effect give @s resistance 12 10 true
execute in overworld run tp @s 0 300 0
tellraw @s {"text": "初始化中继点大约需要30秒，请耐心等待，不要移动。\n正在重置主世界中继点...","color": "gold"}
schedule function jkat:op/point/init0 10s replace