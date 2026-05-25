scoreboard players operation @s jkat.distance = #NUM.lift_v jkat.int

execute if predicate jkat:action/jump run function jkat:lift/loop {x: 0, y: 1, z: 0, type: 'v'}
execute if predicate jkat:action/sneak run function jkat:lift/loop {x: 0, y: -1, z: 0, type: 'v'}
