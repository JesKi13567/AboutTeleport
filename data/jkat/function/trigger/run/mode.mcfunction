execute as @s[scores={jkat.mode=1}] run function jkat:trigger/run/spawn/tp
execute as @s[scores={jkat.mode=2}] run function jkat:trigger/run/warp/tp/0
execute as @s[scores={jkat.mode=3}] run function jkat:trigger/run/home/tp/0
execute as @s[scores={jkat.mode=4}] run function jkat:trigger/run/tpr/tp/0
execute as @s[scores={jkat.mode=5}] run function jkat:trigger/run/back/tp

scoreboard players set @s jkat.mode 0
scoreboard players operation @s jkat.wait = #CD.success jkat.int
scoreboard players set @s[gamemode=creative] jkat.wait 5
