execute store result score @s jkat.home.x.5 run data get entity @s Pos[0] 1
execute store result score @s jkat.home.y.5 run data get entity @s Pos[1] 1
execute store result score @s jkat.home.z.5 run data get entity @s Pos[2] 1
tellraw @s ["",{"text": "成功设置家","color": "gold"},{"text": "5","color": "yellow"},{"text": "！","color": "gold"},{"text": "坐标：","color": "green"},{"score":{"name": "@s","objective": "jkat.home.x.5"}}," ",{"score":{"name": "@s","objective": "jkat.home.y.5"}}," ",{"score":{"name": "@s","objective": "jkat.home.z.5"}}]