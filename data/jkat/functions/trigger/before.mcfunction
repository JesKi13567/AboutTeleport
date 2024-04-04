# 重置
execute unless score #ban_back jkat.mem matches 1 as @s[scores={jkat.death.temp=1..}] run tellraw @s [{"text": "你可以点击 ","color": "gold"},{"text": "这里","color": "yellow","underlined": true,"hoverEvent": {"action": "show_text","value": "/trigger jkat.back"},"clickEvent": {"action": "run_command","value": "/trigger jkat.back"}}," 返回死亡点！"]
scoreboard players reset @s jkat.death.temp
execute as @s[scores={jkat.mode=1..,jkat.wait=1..}] run tellraw @s {"text": "传送过程中断！","color": "red"}
scoreboard players set @s[scores={jkat.mode=1..,jkat.wait=1..}] jkat.mode 0

# 非返回模式记录
execute unless score @s jkat.mode matches 5 run function jkat:trigger/update