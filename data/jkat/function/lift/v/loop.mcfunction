# 循环
scoreboard players remove @s jkat.distance 1
execute as @s[scores={jkat.distance=1..}] if block ~ ~ ~ #jkat:air if block ~ ~-1 ~ #jkat:lift/v run function jkat:lift/done {type: 'v'}
$execute as @s[scores={jkat.distance=1..}] positioned ~ ~$(y) ~ run function jkat:lift/v/loop {y: $(y)}
