execute if score #BAN.tpa jkat.int matches 1 run tellraw @s[scores={jkat.tpa=1..}] {text: "管理员禁用了tpa模块！", color: "gold"}
execute if score #BAN.tpahere jkat.int matches 1 run tellraw @s[scores={jkat.tpahere=1..}] {text: "管理员禁用了tpahere模块！", color: "gold"}

execute unless score #BAN.tpa jkat.int matches 1 as @s[scores={jkat.tpa=1..}] run function jkat:trigger/run/tpa/check/1
execute unless score #BAN.tpahere jkat.int matches 1 as @s[scores={jkat.tpahere=1..}] run function jkat:trigger/run/tpa/check/1

scoreboard players reset @s jkat.tpa
scoreboard players reset @s jkat.tpahere
