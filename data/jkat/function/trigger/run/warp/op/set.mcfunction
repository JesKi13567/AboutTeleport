$execute if dimension overworld run data modify storage jk:at warp.$(n).d set value overworld
$execute if dimension the_nether run data modify storage jk:at warp.$(n).d set value the_nether
$execute if dimension the_end run data modify storage jk:at warp.$(n).d set value the_end
$execute store result storage jk:at warp.$(n).x int 1 run data get entity @s Pos[0] 1
$execute store result storage jk:at warp.$(n).y int 1 run data get entity @s Pos[1] 1
$execute store result storage jk:at warp.$(n).z int 1 run data get entity @s Pos[2] 1
$execute store result storage jk:at warp.$(n).rx int 1 run data get entity @s Rotation[0] 1
$execute store result storage jk:at warp.$(n).ry int 1 run data get entity @s Rotation[1] 1

$tellraw @s ["", {text: "成功设置地标", color: "gold"}, {text: " $(n) ", color: "yellow"}, {text: "！\n", color: "gold"}, {storage: "jk:at", nbt: "warp.$(n).d"}, ": ", {storage: "jk:at", nbt: "warp.$(n).x"}, ", ", {storage: "jk:at", nbt: "warp.$(n).y"}, ", ", {storage: "jk:at", nbt: "warp.$(n).z"}, ". (", {storage: "jk:at", nbt: "warp.$(n).rx"}, ", ", {storage: "jk:at", nbt: "warp.$(n).ry"}, ")"]
