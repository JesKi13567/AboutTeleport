$execute unless score @s jkat.home.d.$(n) matches -1..1 run return run function jkat:trigger/run/home/check/2 {n: $(n)}

$tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.home.ing", interpret: true}, {text: " $(n)", color: "yellow"}, "..."]
scoreboard players set @s jkat.mode 3
function jkat:trigger/cd
