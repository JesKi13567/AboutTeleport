$scoreboard players remove #NUM.lift_$(type) jkat.int 1
$execute if score @s jkat.distance < #NUM.lift_$(type) jkat.int run scoreboard players reset @s jkat.distance
$scoreboard players add #NUM.lift_$(type) jkat.int 1

tp @s ~ ~ ~
scoreboard players set @s jkat.lift 3
execute unless score #BAN.lift_sound jkat.int matches 1 unless score @s jkat.distance matches 0.. run playsound entity.iron_golem.attack block @a ~ ~ ~ 1 1.4
