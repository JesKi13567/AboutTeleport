scoreboard players set #home_flag jkat.int 1

$execute if dimension overworld run scoreboard players set @s jkat.home.d.$(n) 0
$execute if dimension the_nether run scoreboard players set @s jkat.home.d.$(n) -1
$execute if dimension the_end run scoreboard players set @s jkat.home.d.$(n) 1
$execute store result score @s jkat.home.x.$(n) run data get entity @s Pos[0] 1
$execute store result score @s jkat.home.y.$(n) run data get entity @s Pos[1] 1
$execute store result score @s jkat.home.z.$(n) run data get entity @s Pos[2] 1
$execute store result score @s jkat.home.rx.$(n) run data get entity @s Rotation[0] 1
$execute store result score @s jkat.home.ry.$(n) run data get entity @s Rotation[1] 1

$tellraw @s [{text: "成功设置家", color: "gold"}, {text: " $(n) ", color: "yellow"}, "！"]
