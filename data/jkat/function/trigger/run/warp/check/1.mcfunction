$execute unless data storage jk:at warp.list.n.$(n) run return run function jkat:trigger/run/warp/check/2 {n: $(n)}

$tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.warp.ing", interpret: true}, {text: " $(n)", color: "yellow"}, "..."]
scoreboard players set @s jkat.mode 2
function jkat:trigger/cd
