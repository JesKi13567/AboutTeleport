$execute as @s[scores={jkat.home.d.$(num)=0}] run data modify storage jkat:temp d set value overworld
$execute as @s[scores={jkat.home.d.$(num)=-1}] run data modify storage jkat:temp d set value the_nether
$execute as @s[scores={jkat.home.d.$(num)=1}] run data modify storage jkat:temp d set value the_end
$execute store result storage jkat:temp x int 1 run scoreboard players get @s jkat.home.x.$(num)
$execute store result storage jkat:temp y int 1 run scoreboard players get @s jkat.home.y.$(num)
$execute store result storage jkat:temp z int 1 run scoreboard players get @s jkat.home.z.$(num)

function jkat:trigger/run/tp_real with storage jkat:temp

$tellraw @s [{"text": "已回到家","color": "gold"},{"text":"$(num)","color": "yellow"},"！"]