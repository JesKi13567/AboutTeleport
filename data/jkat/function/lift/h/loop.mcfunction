# 循环
scoreboard players remove @s jkat.distance 1
execute as @s[scores={jkat.distance=1..}] if block ~ ~ ~ #jkat:air if block ~ ~-1 ~ #jkat:lift/h run function jkat:lift/done {type: 'h'}
$execute as @s[scores={jkat.distance=1..}] positioned ~$(x) ~ ~$(z) run function jkat:lift/h/loop {x: $(x), z: $(z)}
