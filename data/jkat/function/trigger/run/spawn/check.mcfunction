scoreboard players reset @s jkat.spawn
execute unless data storage jk:at spawn run return run tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.spawn.not_exist", interpret: true}]

tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.spawn.ing", interpret: true}]
scoreboard players set @s jkat.mode 1
function jkat:trigger/cd
