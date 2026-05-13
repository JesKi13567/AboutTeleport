scoreboard players operation @s jkat.distance = #NUM.lift_v jkat.int

execute if predicate jkat:action/jump run function jkat:lift/v/loop {y: 1}
execute if predicate jkat:action/sneak run function jkat:lift/v/loop {y: -1}
