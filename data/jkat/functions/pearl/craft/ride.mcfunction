advancement revoke @s only jkat:pearl/craft/ride
clear @s knowledge_book 1
execute unless score #ban_pearl_ride jkat.mem matches 1 run function jkat:pearl/craft/ride_get
execute if score #ban_pearl_ride jkat.mem matches 1 run function jkat:pearl/craft/ride_fail