execute store result score #warp jkat.warp.x.9 run data get entity @s Pos[0] 1
execute store result score #warp jkat.warp.y.9 run data get entity @s Pos[1] 1
execute store result score #warp jkat.warp.z.9 run data get entity @s Pos[2] 1
tellraw @s ["",{"text": "成功设置地标","color": "gold"},{"text": "9","color": "yellow"},{"text": "！","color": "gold"},{"text": "坐标：","color": "green"},{"score":{"name": "#warp","objective": "jkat.warp.x.9"}}," ",{"score":{"name": "#warp","objective": "jkat.warp.y.9"}}," ",{"score":{"name": "#warp","objective": "jkat.warp.z.9"}}]