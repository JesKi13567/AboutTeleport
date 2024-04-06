execute if dimension overworld run scoreboard players set #warp jkat.warp.d.8 0
execute if dimension the_nether run scoreboard players set #warp jkat.warp.d.8 -1
execute if dimension the_end run scoreboard players set #warp jkat.warp.d.8 1
execute store result score #warp jkat.warp.x.8 run data get entity @s Pos[0] 1
execute store result score #warp jkat.warp.y.8 run data get entity @s Pos[1] 1
execute store result score #warp jkat.warp.z.8 run data get entity @s Pos[2] 1
tellraw @s ["",{"text": "成功设置地标","color": "gold"},{"text": "8","color": "yellow"},{"text": "！","color": "gold"},{"text": "坐标：","color": "green"},{"score":{"name": "#warp","objective": "jkat.warp.x.8"}}," ",{"score":{"name": "#warp","objective": "jkat.warp.y.8"}}," ",{"score":{"name": "#warp","objective": "jkat.warp.z.8"}}]