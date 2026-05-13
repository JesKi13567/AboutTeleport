tag @s add jkat_tpa_self

scoreboard players reset #tpa.flag jkat.int
execute as @a[gamemode=!spectator] if score @s[scores={jkat.tpa.flag.ok=1}] jkat.tpa.receive = @p[tag=jkat_tpa_self] jkat.id run scoreboard players set #tpa.flag jkat.int 1
execute as @a[gamemode=!spectator] if score @s[scores={jkat.tpa.flag.ok=-1}] jkat.tpa.receive = @p[tag=jkat_tpa_self] jkat.id run scoreboard players set #tpa.flag jkat.int -1

tag @s remove jkat_tpa_self

scoreboard players reset @s jkat.tpa
scoreboard players reset @s jkat.tpahere

function jkat:trigger/move/check
execute as @s[scores={jkat.mode=0}] run return 0

execute if score #tpa.flag jkat.int matches 1 run function jkat:trigger/run/tpa/flag/bool/accept
execute if score #tpa.flag jkat.int matches -1 run function jkat:trigger/run/tpa/flag/bool/deny
execute as @s[scores={jkat.mode=8..9, jkat.tpa.flag.tp=0, jkat.wait.tpa=0}] run tellraw @s {text: "对方未响应。", color: "gold"}
