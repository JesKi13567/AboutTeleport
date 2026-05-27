scoreboard players reset #tpa.order jkat.int
scoreboard players set @a[gamemode=!spectator] jkat.list.ed 0
data remove storage jk:at tpa
data modify storage jk:at tpa.txt_tpa set from storage jk:at txt.button.tpa.type.tpa
data modify storage jk:at tpa.txt_tpahere set from storage jk:at txt.button.tpa.type.tpahere
data modify storage jk:at tpa.dialog set from storage jk:at txt.dialog
execute as @s[scores={jkat.list=1}] run summon text_display ~ ~ ~ {Tags: ["jkat", "tpa_list"]}
execute as @s[scores={jkat.list=1}] run function jkat:trigger/run/tpa/list/1
execute as @s[scores={jkat.list=1}] run kill @e[type=text_display, tag=jkat, tag=tpa_list]

execute as @s[scores={jkat.list=2}] run function jkat:trigger/run/warp/list/0

execute as @s[scores={jkat.list=101}] run tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.button.tip.off.ed", interpret: true}]
scoreboard players set @s[scores={jkat.list=101}] jkat.tip.no_guide 1

scoreboard players reset @s jkat.list
