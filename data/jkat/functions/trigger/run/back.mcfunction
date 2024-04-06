scoreboard players operation @s jkat.last.d1 = @s jkat.last.d
scoreboard players operation @s jkat.last.x1 = @s jkat.last.x
scoreboard players operation @s jkat.last.y1 = @s jkat.last.y
scoreboard players operation @s jkat.last.z1 = @s jkat.last.z

# 更新
function jkat:trigger/update

# 真·返回
function jkat:trigger/point/start

execute as @e[tag=jkat_marker_tp] if score @s jkat.mem = @p[tag=jkat_point_player] jkat.last.d1 run tag @s add jkat_point_portal
execute at @e[limit=1,tag=jkat_point_portal] store result block ~ ~ ~ ExitPortal.X int 1 run scoreboard players get @s jkat.last.x1
execute at @e[limit=1,tag=jkat_point_portal] store result block ~ ~ ~ ExitPortal.Y int 1 run scoreboard players get @s jkat.last.y1
execute at @e[limit=1,tag=jkat_point_portal] store result block ~ ~ ~ ExitPortal.Z int 1 run scoreboard players get @s jkat.last.z1

execute if entity @e[tag=jkat_point_portal] run tellraw @s {"text": "已返回到上一地点！","color": "gold"}

function jkat:trigger/point/end