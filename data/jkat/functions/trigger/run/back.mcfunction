scoreboard players operation @s jkat.last.x1 = @s jkat.last.x
scoreboard players operation @s jkat.last.y1 = @s jkat.last.y
scoreboard players operation @s jkat.last.z1 = @s jkat.last.z

# 更新
function jkat:trigger/update

execute at @e[limit=1,tag=jkat_marker_tp] run setblock ~ ~ ~ end_gateway{Age: 222, ExactTeleport: 1b, ExitPortal: {X: 0, Y: 0, Z: 0}} destroy
execute at @e[limit=1,tag=jkat_marker_tp] store result block ~ ~ ~ ExitPortal.X int 1 run scoreboard players get @s jkat.last.x1
execute at @e[limit=1,tag=jkat_marker_tp] store result block ~ ~ ~ ExitPortal.Y int 1 run scoreboard players get @s jkat.last.y1
execute at @e[limit=1,tag=jkat_marker_tp] store result block ~ ~ ~ ExitPortal.Z int 1 run scoreboard players get @s jkat.last.z1
tp @s @e[limit=1,tag=jkat_marker_tp]
effect give @s resistance 1 4 true

tellraw @s {"text": "已返回到上一地点！","color": "gold"}