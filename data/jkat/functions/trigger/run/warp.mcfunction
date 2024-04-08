# 更新
function jkat:trigger/update

# 去地标
execute store result storage jkat:temp num int 1 run scoreboard players get @s jkat.warp.num
function jkat:trigger/run/warp/go with storage jkat:temp