$execute unless data storage jk:at warp.list.n.$(id) run return run tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.button.warp", interpret: true}, {text: " $(id) ", color: "yellow"}, {storage: "jk:at", nbt: "txt.tellraw.not_exist", interpret: true}]
$data remove storage jk:at warp.list.n.$(id)
$data remove storage jk:at warp.list.l[$(c)]
$tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.button.warp", interpret: true}, {text: " $(id) ", color: "yellow"}, {storage: "jk:at", nbt: "txt.tellraw.deleted", interpret: true}]
