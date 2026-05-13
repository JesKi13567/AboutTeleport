scoreboard players operation @s jkat.num = @s jkat.home
scoreboard players reset @s jkat.home

execute if score @s[scores={jkat.num=1..}] jkat.num <= #NUM.home jkat.int store result storage jk:at score.n int 1 run scoreboard players get @s jkat.num
function jkat:trigger/run/home/check/1 with storage jk:at score
