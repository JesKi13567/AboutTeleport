$execute unless data storage jk:at warp.list.n.$(id) run return run tellraw @s {text: "此ID地标不存在！($(id))", color: "gold"}
$data remove storage jk:at warp.list.n.$(id)
$data remove storage jk:at warp.list.l[$(c)]
$tellraw @s ["", {text: "成功清除地标", color: "gold"}, {text: " $(id) ", color: "yellow"}, {text: "！", color: "gold"}]
