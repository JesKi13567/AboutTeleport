function jkat:trigger/run/back/update
function jkat:trigger/run/tp_real with storage jk:at spawn
tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.spawn.ed", interpret: true}]
