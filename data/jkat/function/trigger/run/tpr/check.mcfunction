scoreboard players reset @s jkat.tpr
execute if dimension overworld if score #BAN.tpr.overworld jkat.int matches 1 run return run tellraw @s {text: "管理员禁用了此维度的tpr模块！", color: "gold"}
execute if dimension the_nether if score #BAN.tpr.the_nether jkat.int matches 1 run return run tellraw @s {text: "管理员禁用了此维度的tpr模块！", color: "gold"}
execute if dimension the_end if score #BAN.tpr.the_end jkat.int matches 1 run return run tellraw @s {text: "管理员禁用了此维度的tpr模块！", color: "gold"}

tellraw @s {text: "正在随机传送...", color: "gold"}
scoreboard players set @s jkat.mode 4
function jkat:trigger/cd
