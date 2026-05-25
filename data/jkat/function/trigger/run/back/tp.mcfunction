execute unless score @s jkat.death.record matches 1 run function jkat:trigger/run/back/record {type: 'last'}
execute as @s[scores={jkat.death.record=1}] run function jkat:trigger/run/back/record {type: 'death'}
function jkat:trigger/run/back/update
function jkat:trigger/run/tp_real with storage jk:at pos
tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.back.ed", interpret: true}]
