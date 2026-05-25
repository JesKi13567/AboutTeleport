tp @s ~ ~ ~
scoreboard players reset @s jkat.distance
scoreboard players set @s jkat.lift 3
execute unless score #BAN.lift_sound jkat.int matches 1 run playsound entity.iron_golem.attack block @a ~ ~ ~ 1 1.4
