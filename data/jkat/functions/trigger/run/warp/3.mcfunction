execute as @e[tag=jkat_marker_tp] if score @s jkat.mem = #warp jkat.warp.d.3 run tag @s add jkat_point_portal
execute at @e[limit=1,tag=jkat_point_portal] store result block ~ ~ ~ ExitPortal.X int 1 run scoreboard players get #warp jkat.warp.x.3
execute at @e[limit=1,tag=jkat_point_portal] store result block ~ ~ ~ ExitPortal.Y int 1 run scoreboard players get #warp jkat.warp.y.3
execute at @e[limit=1,tag=jkat_point_portal] store result block ~ ~ ~ ExitPortal.Z int 1 run scoreboard players get #warp jkat.warp.z.3