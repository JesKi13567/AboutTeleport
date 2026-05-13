clear @s[gamemode=!creative] echo_shard[custom_data={jkat: ["pearl", "line"]}] 1

scoreboard players operation @s jkat.wait.pearl = #CD.pearl jkat.int
scoreboard players set @s[gamemode=creative] jkat.wait.pearl 2
scoreboard players operation @s jkat.distance = #NUM.pearl jkat.int
execute anchored eyes run function jkat:pearl/use/loop
execute as @s[scores={jkat.mode=1..}] run function jkat:trigger/move/ed
effect give @s slow_falling 1 0 true
