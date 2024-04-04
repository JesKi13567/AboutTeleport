# 设置传送中继点
execute at @e[tag=jkat_marker_tp] run setblock ~ ~ ~ air
kill @e[tag=jkat_marker_tp]
execute align xyz run summon marker ~.5 ~ ~.5 {Tags:["jkat","jkat_marker_tp","jkat_marker_portal"]}
tp @s ~ ~3 ~