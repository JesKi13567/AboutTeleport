execute unless score @s jkat.death.record matches 1 run function jkat:trigger/run/back/record {type: 'last'}
execute as @s[scores={jkat.death.record=1}] run function jkat:trigger/run/back/record {type: 'death'}
function jkat:trigger/run/back/update
function jkat:trigger/run/tp_real with storage jk:at pos
tellraw @s {text: "已返回到上一地点！", color: "gold"}
