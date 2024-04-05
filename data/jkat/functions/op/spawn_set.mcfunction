# 设置主城
gamerule spawnRadius 0
execute align xyz run setworldspawn ~.5 ~ ~.5
forceload add ~ ~
kill @e[tag=jkat_marker_spawn]
summon marker ~ ~ ~ {Tags:["jkat","jkat_marker_spawn"],Rotation:[0f,0f]}
function jkat:trigger/update
tellraw @s ["",{"text": "已设置主城传送点！","color": "gold"},{"text": "\n坐标：","color": "green"},{"score":{"name": "@s","objective": "jkat.last.x"}}," ",{"score":{"name": "@s","objective": "jkat.last.y"}}," ",{"score":{"name": "@s","objective": "jkat.last.z"}}]
execute at @e[limit=1,tag=jkat_marker_tp] run function jkat:op/point_block