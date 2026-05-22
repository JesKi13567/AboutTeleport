$execute if data storage jk:at warp.list.n.$(id) run return run tellraw @s {text: "此ID地标已存在！($(id))", color: "gold"}

$data modify storage jk:at warp.list.l append value $(id)
$data modify storage jk:at warp.list.n.$(id).name set value $(name)
$execute if dimension overworld run data modify storage jk:at warp.list.n.$(id).d set value overworld
$execute if dimension the_nether run data modify storage jk:at warp.list.n.$(id).d set value the_nether
$execute if dimension the_end run data modify storage jk:at warp.list.n.$(id).d set value the_end
$execute store result storage jk:at warp.list.n.$(id).x int 1 run data get entity @s Pos[0] 1
$execute store result storage jk:at warp.list.n.$(id).y int 1 run data get entity @s Pos[1] 1
$execute store result storage jk:at warp.list.n.$(id).z int 1 run data get entity @s Pos[2] 1
$execute store result storage jk:at warp.list.n.$(id).rx int 1 run data get entity @s Rotation[0] 1
$execute store result storage jk:at warp.list.n.$(id).ry int 1 run data get entity @s Rotation[1] 1

$tellraw @s ["", {text: "成功设置地标 ", color: "gold"}, {text: $(name), color: "yellow"}, " ($(id))", {text: "！\n", color: "gold"}, {storage: "jk:at", nbt: "warp.list.n.$(id).d"}, ": ", {storage: "jk:at", nbt: "warp.list.n.$(id).x"}, ", ", {storage: "jk:at", nbt: "warp.list.n.$(id).y"}, ", ", {storage: "jk:at", nbt: "warp.list.n.$(id).z"}, ". (", {storage: "jk:at", nbt: "warp.list.n.$(id).rx"}, ", ", {storage: "jk:at", nbt: "warp.list.n.$(id).ry"}, ")"]
