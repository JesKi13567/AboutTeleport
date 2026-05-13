scoreboard players reset @s jkat.back
execute if score #BAN.back jkat.int matches 1 run return run tellraw @s {text: "管理员禁用了back模块！", color: "gold"}

tellraw @s {text: "正在返回上一地点...", color: "gold"}
scoreboard players set @s jkat.mode 5
function jkat:trigger/cd

execute unless score @s jkat.death.record matches 1 run return 0

data modify storage jk:at pos.d set from entity @s LastDeathLocation.dimension
execute if data storage jk:at pos.d."minecraft:overworld" run scoreboard players set @s jkat.death.d 0
execute if data storage jk:at pos.d."minecraft:the_nether" run scoreboard players set @s jkat.death.d -1
execute if data storage jk:at pos.d."minecraft:the_end" run scoreboard players set @s jkat.death.d 1
execute store result score @s jkat.death.x run data get entity @s LastDeathLocation.pos[0] 1
execute store result score @s jkat.death.y run data get entity @s LastDeathLocation.pos[1] 1
execute store result score @s jkat.death.z run data get entity @s LastDeathLocation.pos[2] 1
execute store result score @s jkat.death.rx run data get entity @s Rotation[0] 1
execute store result score @s jkat.death.ry run data get entity @s Rotation[1] 1
