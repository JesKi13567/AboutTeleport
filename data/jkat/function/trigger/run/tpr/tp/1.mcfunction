scoreboard players reset #tpr.d jkat.int
execute in the_nether run scoreboard players set #tpr.d jkat.int -1

$execute unless score #tpr.d jkat.int matches -1 run spreadplayers ~$(x) ~$(z) 1 100 true @s
$execute if score #tpr.d jkat.int matches -1 run spreadplayers ~$(x) ~$(z) 1 100 under 120 true @s

tellraw @s {text: "随机传送成功！", color: "gold"}
$tellraw @s {text: "偏移：$(x), $(z)", color: "yellow"}
