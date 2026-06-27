effect give @s resistance 5 4

tag @e[type=!player] remove jkat_with_leash
data modify storage jk:at data.UUID set from entity @s UUID
execute as @e[distance=..10, type=!player] if data entity @s leash run function jkat:trigger/run/with_leash with storage jk:at data
$execute in $(d) run tp @e[type=!player, tag=jkat_with_leash] $(x) $(y) $(z) $(rx) $(ry)
$execute in $(d) on vehicle run tp @s $(x) $(y) $(z) $(rx) $(ry)
$execute in $(d) run tp @s $(x) $(y) $(z) $(rx) $(ry)
