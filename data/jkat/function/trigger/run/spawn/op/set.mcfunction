gamerule respawn_radius 0
setworldspawn ~ ~ ~ ~ ~

execute if dimension overworld run data modify storage jk:at spawn.d set value overworld
execute if dimension the_nether run data modify storage jk:at spawn.d set value the_nether
execute if dimension the_end run data modify storage jk:at spawn.d set value the_end
execute store result storage jk:at spawn.x int 1 run data get entity @s Pos[0] 1
execute store result storage jk:at spawn.y int 1 run data get entity @s Pos[1] 1
execute store result storage jk:at spawn.z int 1 run data get entity @s Pos[2] 1
execute store result storage jk:at spawn.rx int 1 run data get entity @s Rotation[0] 1
execute store result storage jk:at spawn.ry int 1 run data get entity @s Rotation[1] 1

tellraw @s ["", {text: "已设置主城传送点！\n", color: "gold"}, {storage: "jk:at", nbt: "spawn.d"}, ": ", {storage: "jk:at", nbt: "spawn.x"}, ", ", {storage: "jk:at", nbt: "spawn.y"}, ", ", {storage: "jk:at", nbt: "spawn.z"}, ". (", {storage: "jk:at", nbt: "spawn.rx"}, ", ", {storage: "jk:at", nbt: "spawn.ry"}, ")"]
