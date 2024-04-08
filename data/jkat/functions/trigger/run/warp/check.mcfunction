scoreboard players operation @s jkat.warp.num = @s jkat.warp
scoreboard players reset @s jkat.warp
scoreboard players set #warp jkat.mem 0
scoreboard players set @s[scores={jkat.warp.num=1..10}] jkat.mode 7

execute store result storage jkat:temp num int 1 run scoreboard players get @s jkat.warp.num
function jkat:trigger/run/warp/check_real with storage jkat:temp

execute as @s[scores={jkat.mode=0}] run function jkat:trigger/run/warp/fail
execute if score #warp jkat.mem matches -2 run function jkat:trigger/run/warp/fail
execute if score #warp jkat.mem matches -1 run function jkat:trigger/run/warp/exist