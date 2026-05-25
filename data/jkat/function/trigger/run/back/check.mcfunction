scoreboard players reset @s jkat.back
execute if score #BAN.back jkat.int matches 1 run return run tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.button.back", interpret: true, color: "yellow"}, {storage: "jk:at", nbt: "txt.tellraw.module_banned", interpret: true}]
tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.back.ing", interpret: true}]
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
