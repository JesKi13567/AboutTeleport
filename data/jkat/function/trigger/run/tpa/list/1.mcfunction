scoreboard players operation #tpa.order jkat.int > @a[gamemode=!spectator, scores={jkat.list.ed=0}] jkat.id
execute store result storage jk:at tpa.n int 1 run scoreboard players get #tpa.order jkat.int
execute as @a[gamemode=!spectator, scores={jkat.list.ed=0}] if score @s jkat.id = #tpa.order jkat.int run function jkat:trigger/run/tpa/list/2 with storage jk:at tpa
execute if entity @a[limit=1, gamemode=!spectator, scores={jkat.list.ed=0}] run function jkat:trigger/run/tpa/list/1
execute unless entity @a[limit=1, gamemode=!spectator, scores={jkat.list.ed=0}] run function jkat:trigger/run/tpa/list/dialog with storage jk:at tpa.dialog
