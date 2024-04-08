$execute if score #warp jkat.warp.d.$(num) matches 0 run data modify storage jkat:temp d set value overworld
$execute if score #warp jkat.warp.d.$(num) matches -1 run data modify storage jkat:temp d set value the_nether
$execute if score #warp jkat.warp.d.$(num) matches 1 run data modify storage jkat:temp d set value the_end
$execute store result storage jkat:temp x int 1 run scoreboard players get #warp jkat.warp.x.$(num)
$execute store result storage jkat:temp y int 1 run scoreboard players get #warp jkat.warp.y.$(num)
$execute store result storage jkat:temp z int 1 run scoreboard players get #warp jkat.warp.z.$(num)

function jkat:trigger/run/tp_real with storage jkat:temp

$tellraw @s [{"text": "已来到地标","color": "gold"},{"text":"$(num)","color": "yellow"},"！"]