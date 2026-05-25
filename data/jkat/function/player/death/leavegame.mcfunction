scoreboard players reset @s jkat.leavegame
tellraw @s[scores={jkat.mode=1..}] [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.tp_fail.leave_server", interpret: true}]
scoreboard players set @s jkat.mode 0
