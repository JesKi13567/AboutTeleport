$scoreboard objectives remove jkat.home.d.$(num)
$scoreboard objectives remove jkat.home.x.$(num)
$scoreboard objectives remove jkat.home.y.$(num)
$scoreboard objectives remove jkat.home.z.$(num)

$scoreboard objectives remove jkat.warp.d.$(num)
$scoreboard objectives remove jkat.warp.x.$(num)
$scoreboard objectives remove jkat.warp.y.$(num)
$scoreboard objectives remove jkat.warp.z.$(num)

$scoreboard objectives add jkat.home.d.$(num) dummy "家d$(num)"
$scoreboard objectives add jkat.home.x.$(num) dummy "家x$(num)"
$scoreboard objectives add jkat.home.y.$(num) dummy "家y$(num)"
$scoreboard objectives add jkat.home.z.$(num) dummy "家z$(num)"

$scoreboard objectives add jkat.warp.d.$(num) dummy "地标d$(num)"
$scoreboard objectives add jkat.warp.x.$(num) dummy "地标x$(num)"
$scoreboard objectives add jkat.warp.y.$(num) dummy "地标y$(num)"
$scoreboard objectives add jkat.warp.z.$(num) dummy "地标z$(num)"

execute store result score #temp jkat.mem run data get storage jkat:temp num 1
scoreboard players add #temp jkat.mem 1
execute store result storage jkat:temp num int 1 run scoreboard players get #temp jkat.mem
execute if score #temp jkat.mem matches ..10 run function jkat:init_ with storage jkat:temp