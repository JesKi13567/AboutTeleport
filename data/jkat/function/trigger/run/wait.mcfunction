scoreboard players remove @s jkat.wait 1

scoreboard players reset @s jkat.spawn
scoreboard players reset @s jkat.warp
scoreboard players reset @s jkat.home
scoreboard players reset @s jkat.tpr
scoreboard players reset @s jkat.back
scoreboard players reset @s jkat.tpa
scoreboard players reset @s jkat.tpahere

execute as @s[scores={jkat.mode=0}] run return 0

function jkat:trigger/move/check
execute as @s[scores={jkat.mode=1.., jkat.wait=0}] run function jkat:trigger/run/mode
