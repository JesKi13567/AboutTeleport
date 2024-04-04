execute store result score #warp jkat.warp.x.1 run data get entity @s Pos[0] 1
execute store result score #warp jkat.warp.y.1 run data get entity @s Pos[1] 1
execute store result score #warp jkat.warp.z.1 run data get entity @s Pos[2] 1
tellraw @s ["",{"text": "成功设置地标","color": "gold"},{"text": "1","color": "yellow"},{"text": "！","color": "gold"},{"text": "坐标：","color": "green"},{"score":{"name": "#warp","objective": "jkat.warp.x.1"}}," ",{"score":{"name": "#warp","objective": "jkat.warp.y.1"}}," ",{"score":{"name": "#warp","objective": "jkat.warp.z.1"}}]