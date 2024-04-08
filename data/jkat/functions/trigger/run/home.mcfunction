# 更新
function jkat:trigger/update

# 回家
execute store result storage jkat:temp num int 1 run scoreboard players get @s jkat.home.num
function jkat:trigger/run/home/go with storage jkat:temp