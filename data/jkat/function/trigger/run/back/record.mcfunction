$execute as @s[scores={jkat.$(type).d=0}] run data modify storage jk:at pos.d set value overworld
$execute as @s[scores={jkat.$(type).d=-1}] run data modify storage jk:at pos.d set value the_nether
$execute as @s[scores={jkat.$(type).d=1}] run data modify storage jk:at pos.d set value the_end
$execute store result storage jk:at pos.x int 1 run scoreboard players get @s jkat.$(type).x
$execute store result storage jk:at pos.y int 1 run scoreboard players get @s jkat.$(type).y
$execute store result storage jk:at pos.z int 1 run scoreboard players get @s jkat.$(type).z
$execute store result storage jk:at pos.rx int 1 run scoreboard players get @s jkat.$(type).rx
$execute store result storage jk:at pos.ry int 1 run scoreboard players get @s jkat.$(type).ry
