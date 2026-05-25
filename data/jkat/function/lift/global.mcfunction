execute as @s[scores={jkat.lift=1..}] run return 0

execute unless score #BAN.lift_v jkat.int matches 1 if block ~ ~-1 ~ #jkat:lift/v run function jkat:lift/v
execute unless score #BAN.lift_h jkat.int matches 1 if block ~ ~-1 ~ #jkat:lift/h if predicate jkat:action/sneak run function jkat:lift/h
