$execute unless data storage jk:at warp.list.n.$(id) run return run tellraw @s {text: "此ID地标不存在！($(id))", color: "gold"}
$data modify storage jk:at warp.list.n.$(id).name set value $(name)
tellraw @s {text: "地标名字修改成功！", color: "gold"}
