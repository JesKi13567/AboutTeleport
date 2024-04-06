# 获取水平转向
scoreboard players set @s[y_rotation=135.1..180] jkat.facing 1
scoreboard players set @s[y_rotation=-180..-135] jkat.facing 1
scoreboard players set @s[y_rotation=-134.9..-45] jkat.facing 2
scoreboard players set @s[y_rotation=-44.9..45] jkat.facing 3
scoreboard players set @s[y_rotation=45.1..135] jkat.facing 4

execute as @s[scores={jkat.facing=1}] run function jkat:lift/h_loop_1
execute as @s[scores={jkat.facing=2}] run function jkat:lift/h_loop_2
execute as @s[scores={jkat.facing=3}] run function jkat:lift/h_loop_3
execute as @s[scores={jkat.facing=4}] run function jkat:lift/h_loop_4