scoreboard players operation @s jkat.num = @s jkat.warp
scoreboard players reset @s jkat.warp

execute store result storage jk:at score.n int 1 run scoreboard players get @s jkat.num
function jkat:trigger/run/warp/check/1 with storage jk:at score
