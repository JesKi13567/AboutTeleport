function jkat:trigger/run/back/update

execute store result score #tpr.pos.x jkat.int run random value 1000..10000
execute store result score #tpr.pos.z jkat.int run random value 1000..10000

execute store result score #tpr.flag.x jkat.int run random value -1..0
execute store result score #tpr.flag.z jkat.int run random value -1..0

execute if score #tpr.flag.x jkat.int matches -1 run scoreboard players operation #tpr.pos.x jkat.int *= #tpr.flag.x jkat.int
execute if score #tpr.flag.z jkat.int matches -1 run scoreboard players operation #tpr.pos.z jkat.int *= #tpr.flag.z jkat.int

execute store result storage jk:at pos.x int 1 run scoreboard players get #tpr.pos.x jkat.int
execute store result storage jk:at pos.z int 1 run scoreboard players get #tpr.pos.z jkat.int
function jkat:trigger/run/tpr/tp/1 with storage jk:at pos
