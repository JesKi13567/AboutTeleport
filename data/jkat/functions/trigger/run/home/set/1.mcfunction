execute if dimension overworld run scoreboard players set @s jkat.home.d.1 0
execute if dimension the_nether run scoreboard players set @s jkat.home.d.1 -1
execute if dimension the_end run scoreboard players set @s jkat.home.d.1 1
execute store result score @s jkat.home.x.1 run data get entity @s Pos[0] 1
execute store result score @s jkat.home.y.1 run data get entity @s Pos[1] 1
execute store result score @s jkat.home.z.1 run data get entity @s Pos[2] 1
tellraw @s ["",{"text": "成功设置家","color": "gold"},{"text": "1","color": "yellow"},{"text": "！","color": "gold"},{"text": "坐标：","color": "green"},{"score":{"name": "@s","objective": "jkat.home.x.1"}}," ",{"score":{"name": "@s","objective": "jkat.home.y.1"}}," ",{"score":{"name": "@s","objective": "jkat.home.z.1"}}]