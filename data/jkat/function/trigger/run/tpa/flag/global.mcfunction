scoreboard players remove @s jkat.wait.tpa 1

execute as @s[scores={jkat.tpa.flag.tp=0}] run function jkat:trigger/run/tpa/flag/waiting
execute as @s[scores={jkat.tpa.flag.tp=1, jkat.wait.tpa=0}] run function jkat:trigger/run/tpa/tp

execute as @s[scores={jkat.wait.tpa=0}] run scoreboard players set @s jkat.mode 0
