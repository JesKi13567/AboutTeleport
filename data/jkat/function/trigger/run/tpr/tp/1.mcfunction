scoreboard players reset #tpr.d jkat.int
execute in the_nether run scoreboard players set #tpr.d jkat.int -1

$execute unless score #tpr.d jkat.int matches -1 run spreadplayers ~$(x) ~$(z) 1 100 true @s
$execute if score #tpr.d jkat.int matches -1 run spreadplayers ~$(x) ~$(z) 1 100 under 120 true @s

$tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.tpa.success", interpret: true}, "\n", {storage: "jk:at", nbt: "txt.tellraw.offset", interpret: true}, {storage: "jk:at", nbt: "txt.char.colon", interpret: true}, {text: "$(x), $(z)", color: "yellow"}]
