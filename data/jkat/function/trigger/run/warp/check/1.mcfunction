$execute unless data storage jk:at warp.list.n.$(n) run return run function jkat:trigger/run/warp/check/2 {n: $(n)}

$tellraw @s [{text: "正在前往地标", color: "gold"}, {text: " $(n) ", color: "yellow"}, "..."]
scoreboard players set @s jkat.mode 2
function jkat:trigger/cd
