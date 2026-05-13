scoreboard players reset @s jkat.spawn
execute unless data storage jk:at spawn run return run tellraw @s {text: "管理员没有设置主城传送点！", color: "gold"}

tellraw @s {text: "正在前往主城传送点...", color: "gold"}
scoreboard players set @s jkat.mode 1
function jkat:trigger/cd
