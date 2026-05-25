execute unless score #BAN.back jkat.int matches 1 as @s[scores={jkat.death.imp=1..}] run tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.click_here", interpret: true, color: "yellow", underlined: true, hover_event: {action: "show_text", value: "/trigger jkat.back"}, click_event: {action: "run_command", command: "/trigger jkat.back"}}, {storage: "jk:at", nbt: "txt.tellraw.to_return_death_point", interpret: true}]

scoreboard players reset @s jkat.death.imp
scoreboard players set @s jkat.death.record 1
execute as @s[scores={jkat.mode=1.., jkat.wait=1..}] run tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.tp_fail.death", interpret: true}]
