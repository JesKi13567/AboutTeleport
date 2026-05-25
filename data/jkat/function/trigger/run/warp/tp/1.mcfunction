$function jkat:trigger/run/tp_real with storage jk:at warp.list.n.$(n)
$tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.warp.ed", interpret: true}, {text: " $(n)", color: "yellow"}, {storage: "jk:at", nbt: "txt.char.exclamation", interpret: true}]
