tellraw @s {text: "传送被接受，请不要移动...", color: "gold"}
scoreboard players set @s jkat.tpa.flag.tp 1
scoreboard players operation @s jkat.wait.tpa = #CD.wait jkat.int
