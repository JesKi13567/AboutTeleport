advancement revoke @s only jkat:pearl/crafted
clear @s knowledge_book[custom_data={jkat: ["pearl", "craft"]}] 1

execute unless score #BAN.pearl jkat.int matches 1 run loot give @s loot jkat:pearl
execute if score #BAN.pearl jkat.int matches 1 run function jkat:pearl/craft/fail
