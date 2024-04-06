execute as @e[tag=jkat_marker_tp] if score @s jkat.mem = @p[tag=jkat_point_player] jkat.home.d.5 run tag @s add jkat_point_portal
execute at @e[limit=1,tag=jkat_point_portal] store result block ~ ~ ~ ExitPortal.X int 1 run scoreboard players get @s jkat.home.x.5
execute at @e[limit=1,tag=jkat_point_portal] store result block ~ ~ ~ ExitPortal.Y int 1 run scoreboard players get @s jkat.home.y.5
execute at @e[limit=1,tag=jkat_point_portal] store result block ~ ~ ~ ExitPortal.Z int 1 run scoreboard players get @s jkat.home.z.5