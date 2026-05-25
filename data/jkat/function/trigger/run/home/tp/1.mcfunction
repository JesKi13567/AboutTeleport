$execute as @s[scores={jkat.home.d.$(n)=0}] run data modify storage jk:at pos.d set value overworld
$execute as @s[scores={jkat.home.d.$(n)=-1}] run data modify storage jk:at pos.d set value the_nether
$execute as @s[scores={jkat.home.d.$(n)=1}] run data modify storage jk:at pos.d set value the_end
$execute store result storage jk:at pos.x int 1 run scoreboard players get @s jkat.home.x.$(n)
$execute store result storage jk:at pos.y int 1 run scoreboard players get @s jkat.home.y.$(n)
$execute store result storage jk:at pos.z int 1 run scoreboard players get @s jkat.home.z.$(n)
$execute store result storage jk:at pos.rx int 1 run scoreboard players get @s jkat.home.rx.$(n)
$execute store result storage jk:at pos.ry int 1 run scoreboard players get @s jkat.home.ry.$(n)

function jkat:trigger/run/tp_real with storage jk:at pos
$tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.home.ed", interpret: true}, {text: " $(n)", color: "yellow"}, {storage: "jk:at", nbt: "txt.char.exclamation", interpret: true}]
