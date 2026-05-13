$scoreboard players add #BAN.$(id) jkat.int 1
$execute if score #BAN.$(id) jkat.int matches 2.. run scoreboard players reset #BAN.$(id) jkat.int
function jkat:op/panel/show
