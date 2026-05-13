scoreboard players reset #warp.flag jkat.int
scoreboard players operation #warp.n jkat.int = @s jkat.admin.trigger
scoreboard players operation #warp.n jkat.int %= #100 jkat.int
execute if score #warp.n jkat.int matches 1..10 run scoreboard players set #warp.flag jkat.int 1
execute unless score #warp.flag jkat.int matches 1 run scoreboard players remove #warp.n jkat.int 10

execute store result storage jk:at score.n int 1 run scoreboard players get #warp.n jkat.int
execute unless score #warp.flag jkat.int matches 1 run function jkat:trigger/run/warp/op/remove with storage jk:at score
execute if score #warp.flag jkat.int matches 1 run function jkat:trigger/run/warp/op/set with storage jk:at score
