scoreboard players operation @s jkat.distance = #NUM.lift_h jkat.int

scoreboard players set @s[y_rotation=157.5..180] jkat.facing 1
scoreboard players set @s[y_rotation=-180..-157.6] jkat.facing 1
scoreboard players set @s[y_rotation=-157.5..-112.6] jkat.facing 5
scoreboard players set @s[y_rotation=-112.5..-67.6] jkat.facing 2
scoreboard players set @s[y_rotation=-67.5..-22.6] jkat.facing 6
scoreboard players set @s[y_rotation=-22.5..22.5] jkat.facing 3
scoreboard players set @s[y_rotation=22.6..67.5] jkat.facing 7
scoreboard players set @s[y_rotation=67.6..112.5] jkat.facing 4
scoreboard players set @s[y_rotation=112.6..157.4] jkat.facing 8

execute as @s[scores={jkat.facing=1}] run function jkat:lift/h/loop {x: 0, z: -1}
execute as @s[scores={jkat.facing=2}] run function jkat:lift/h/loop {x: 1, z: 0}
execute as @s[scores={jkat.facing=3}] run function jkat:lift/h/loop {x: 0, z: 1}
execute as @s[scores={jkat.facing=4}] run function jkat:lift/h/loop {x: -1, z: 0}
execute as @s[scores={jkat.facing=5}] run function jkat:lift/h/loop {x: 1, z: -1}
execute as @s[scores={jkat.facing=6}] run function jkat:lift/h/loop {x: 1, z: 1}
execute as @s[scores={jkat.facing=7}] run function jkat:lift/h/loop {x: -1, z: 1}
execute as @s[scores={jkat.facing=8}] run function jkat:lift/h/loop {x: -1, z: -1}
