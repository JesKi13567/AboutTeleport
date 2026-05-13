scoreboard players operation #tpa.order jkat.int > @a[gamemode=!spectator, scores={jkat.list.ed=0}] jkat.id
execute as @a[gamemode=!spectator, scores={jkat.list.ed=0}] if score @s jkat.id = #tpa.order jkat.int run function jkat:trigger/run/tpa/list/2
execute if entity @a[limit=1, gamemode=!spectator, scores={jkat.list.ed=0}] run function jkat:trigger/run/tpa/list/1
