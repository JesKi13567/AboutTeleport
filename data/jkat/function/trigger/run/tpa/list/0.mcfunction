scoreboard players reset #tpa.order jkat.int
scoreboard players set @a[gamemode=!spectator] jkat.list.ed 0
data remove storage jk:at tpa
execute as @s[scores={jkat.list=1}] run summon text_display ~ ~ ~ {Tags: ["jkat", "tpa_list"]}
execute as @s[scores={jkat.list=1}] run function jkat:trigger/run/tpa/list/1
execute as @s[scores={jkat.list=1}] run kill @e[type=text_display, tag=jkat, tag=tpa_list]

execute as @s[scores={jkat.list=2}] run function jkat:trigger/run/warp/list/0

scoreboard players reset @s jkat.list
