function jkat:trigger/run/back/update
execute store result storage jk:at score.n int 1 run scoreboard players get @s jkat.num
function jkat:trigger/run/home/tp/1 with storage jk:at score
