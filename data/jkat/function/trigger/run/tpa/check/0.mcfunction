execute if score #BAN.tpa jkat.int matches 1 run tellraw @s[scores={jkat.tpa=1..}] [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.button.tpa.type.tpa", interpret: true, color: "yellow"}, {storage: "jk:at", nbt: "txt.tellraw.module_banned", interpret: true}]
execute if score #BAN.tpahere jkat.int matches 1 run tellraw @s[scores={jkat.tpahere=1..}] [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.button.tpa.type.tpahere", interpret: true, color: "yellow"}, {storage: "jk:at", nbt: "txt.tellraw.module_banned", interpret: true}]

execute unless score #BAN.tpa jkat.int matches 1 as @s[scores={jkat.tpa=1..}] run function jkat:trigger/run/tpa/check/1
execute unless score #BAN.tpahere jkat.int matches 1 as @s[scores={jkat.tpahere=1..}] run function jkat:trigger/run/tpa/check/1

scoreboard players reset @s jkat.tpa
scoreboard players reset @s jkat.tpahere
