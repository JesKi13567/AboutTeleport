# 循环
$execute as @s[scores={jkat.distance=1..}] positioned ~$(x) ~$(y) ~$(z) if block ~ ~ ~ #jkat:air if block ~ ~-1 ~ #jkat:lift/$(type) run function jkat:lift/done {type: $(type)}
scoreboard players remove @s jkat.distance 1
$execute as @s[scores={jkat.distance=1..}] positioned ~$(x) ~$(y) ~$(z) run function jkat:lift/loop {x: $(x), y: $(y), z: $(z), type: $(type)}
