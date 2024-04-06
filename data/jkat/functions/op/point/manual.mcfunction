# 设置传送中继点
execute at @e[tag=jkat_marker_tp] run setblock ~ ~ ~ air
kill @e[limit=1,sort=nearest,tag=jkat_marker_tp]
execute align xyz run summon marker ~.5 ~ ~.5 {Tags:["jkat","jkat_marker_tp"]}
execute if dimension overworld run scoreboard players set @e[limit=1,sort=nearest,tag=jkat_marker_tp] jkat.mem 0
execute if dimension the_nether run scoreboard players set @e[limit=1,sort=nearest,tag=jkat_marker_tp] jkat.mem -1
execute if dimension the_end run scoreboard players set @e[limit=1,sort=nearest,tag=jkat_marker_tp] jkat.mem 1
execute at @e[tag=jkat_marker_tp] run function jkat:op/point/block
tellraw @s {"text": "已设置当前维度的传送中继点！","color": "gold"}
tp @s ~ ~3 ~