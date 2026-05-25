data remove storage jk:at warp.temp
data modify storage jk:at warp.temp.delete set from storage jk:at txt.button.delete
data modify storage jk:at warp.temp.dialog set from storage jk:at txt.dialog
execute store result score #warp.count jkat.int run data get storage jk:at warp.list.l
execute store result storage jk:at warp.temp.c int 1 run scoreboard players remove #warp.count jkat.int 1
execute if score #warp.count jkat.int matches ..-1 run return run tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.warp.none", interpret: true}]
execute if score #warp.count jkat.int matches 0.. run function jkat:trigger/run/warp/list/1 with storage jk:at warp.temp
