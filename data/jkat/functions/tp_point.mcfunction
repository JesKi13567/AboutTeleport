# 传送至中继点
execute at @e[limit=1,tag=jkat_marker_tp] run function jkat:op/point_block
tp @s @e[limit=1,tag=jkat_marker_tp]
effect give @s resistance 1 4 true