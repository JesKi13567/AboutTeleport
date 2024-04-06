# 记录传送前的位置
execute if dimension overworld run scoreboard players set @s jkat.last.d 0
execute if dimension the_nether run scoreboard players set @s jkat.last.d -1
execute if dimension the_end run scoreboard players set @s jkat.last.d 1
execute store result score @s jkat.last.x run data get entity @s Pos[0] 1
execute store result score @s jkat.last.y run data get entity @s Pos[1] 1
execute store result score @s jkat.last.z run data get entity @s Pos[2] 1