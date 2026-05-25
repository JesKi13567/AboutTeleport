tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.tpa.bool.accept", interpret: true}]
scoreboard players set @s jkat.tpa.flag.tp 1
scoreboard players operation @s jkat.wait.tpa = #CD.wait jkat.int
