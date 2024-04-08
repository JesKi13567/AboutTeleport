$execute if dimension overworld run scoreboard players set #warp jkat.warp.d.$(num) 0
$execute if dimension the_nether run scoreboard players set #warp jkat.warp.d.$(num) -1
$execute if dimension the_end run scoreboard players set #warp jkat.warp.d.$(num) 1
$execute store result score #warp jkat.warp.x.$(num) run data get entity @s Pos[0] 1
$execute store result score #warp jkat.warp.y.$(num) run data get entity @s Pos[1] 1
$execute store result score #warp jkat.warp.z.$(num) run data get entity @s Pos[2] 1
$tellraw @s ["",{"text": "成功设置地标","color": "gold"},{"text": "$(num)","color": "yellow"},{"text": "！","color": "gold"},{"text": "坐标：","color": "green"},{"score":{"name": "#warp","objective": "jkat.warp.x.$(num)"}}," ",{"score":{"name": "#warp","objective": "jkat.warp.y.$(num)"}}," ",{"score":{"name": "#warp","objective": "jkat.warp.z.$(num)"}}]