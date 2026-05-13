$execute unless score @s jkat.home.d.$(n) matches -1..1 run return run function jkat:trigger/run/home/check/2 {n: $(n)}

$tellraw @s [{text: "正在前往家", color: "gold"}, {text: " $(n) ", color: "yellow"}, "..."]
scoreboard players set @s jkat.mode 3
function jkat:trigger/cd
