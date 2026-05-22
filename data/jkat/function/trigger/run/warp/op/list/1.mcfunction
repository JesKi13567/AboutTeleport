$execute store result storage jk:at warp.temp.id int 1 run data get storage jk:at warp.list.l[$(c)]
function jkat:trigger/run/warp/op/list/2 with storage jk:at warp.temp

scoreboard players remove #warp.count jkat.int 1
execute store result storage jk:at warp.temp.c int 1 run scoreboard players get #warp.count jkat.int
execute if score #warp.count jkat.int matches 0.. run function jkat:trigger/run/warp/op/list/1 with storage jk:at warp.temp
execute if score #warp.count jkat.int matches ..-1 run function jkat:trigger/run/warp/op/list/dialog with storage jk:at warp.temp.dialog
