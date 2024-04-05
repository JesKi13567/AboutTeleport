tp @s @e[limit=1,tag=jkat_marker_spawn]
kill @e[tag=jkat_marker_spawn]
tellraw @s ["",{"text": "已清除主城传送点！","color": "gold"}]