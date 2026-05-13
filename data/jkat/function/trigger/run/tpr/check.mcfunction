scoreboard players reset @s jkat.tpr
execute if score #BAN.tpr jkat.int matches 1 run return run tellraw @s {text: "管理员禁用了tpr模块！", color: "gold"}

tellraw @s {text: "正在随机传送...", color: "gold"}
scoreboard players set @s jkat.mode 4
function jkat:trigger/cd
