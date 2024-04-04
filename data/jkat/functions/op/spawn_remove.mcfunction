tp @s @e[limit=1,tag=jkat.marker.spawn]
kill @e[tag=jkat.marker.spawn]
tellraw @s ["",{"text": "已清除主城传送点！","color": "gold"}]