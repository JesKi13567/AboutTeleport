execute unless entity @e[limit=1,distance=..5,type=eye_of_ender] run clear @s[gamemode=!creative] ender_eye{jkat: ["pearl", "line"]} 1
kill @e[limit=1,distance=..5,type=eye_of_ender]
scoreboard players operation @s jkat.wait.pearl = #wait_pearl jkat.mem
scoreboard players set @s[gamemode=creative] jkat.wait.pearl 2
scoreboard players operation #temp jkat.mem = #num_pearl_line jkat.mem
execute anchored eyes run function jkat:pearl/use/line_loop
effect give @s slow_falling 1 0 true