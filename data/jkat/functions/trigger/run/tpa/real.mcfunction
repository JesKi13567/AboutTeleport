tellraw @s {"text": "正在请求传送...","color": "gold"}

# 标记自己
tag @s add jkat.tpa.ing

# 寻找相同id的玩家
execute as @s[scores={jkat.tpa=1..}] as @a if score @s jkat.id = @p[tag=jkat.tpa.ing] jkat.tpa run tag @s add jkat.tpa.found
execute as @s[scores={jkat.tpahere=1..}] as @a if score @s jkat.id = @p[tag=jkat.tpa.ing] jkat.tpahere run tag @s add jkat.tpa.found
scoreboard players operation @p[tag=jkat.tpa.found] jkat.tpa.get = @p[tag=jkat.tpa.ing] jkat.id

# 去
execute as @s[scores={jkat.tpa=1..}] run tellraw @p[distance=.1..,tag=jkat.tpa.found] ["",{"selector":"@p[tag=jkat.tpa.ing]"},{"text": " 想要传送到你这里，请点击选择：\n","color": "gold"},{"text": "【接受传送】","color": "green","hoverEvent": {"action": "show_text","contents": [{"text": "【接受传送】\n","color": "green"},{"text": "/trigger jkat.tpa.ok","color": "yellow"}]},"clickEvent": {"action": "run_command","value": "/trigger jkat.tpa.ok"}},"  ",{"text": "【拒绝传送】","color": "red","hoverEvent": {"action": "show_text","contents": [{"text": "【拒绝传送】\n","color": "red"},{"text": "/trigger jkat.tpa.ok set -1","color": "yellow"}]},"clickEvent": {"action": "run_command","value": "/trigger jkat.tpa.ok set -1"}}]
execute as @s[scores={jkat.tpa=1..}] if entity @p[tag=jkat.tpa.found,distance=.1..] run scoreboard players set @s jkat.mode 3

# 来
execute as @s[scores={jkat.tpahere=1..}] run tellraw @p[distance=.1..,tag=jkat.tpa.found] ["",{"selector":"@p[tag=jkat.tpa.ing]"},{"text": " 想要你传送到ta那里，请点击选择：\n","color": "gold"},{"text": "【接受传送】","color": "green","hoverEvent": {"action": "show_text","contents": [{"text": "【接受传送】\n","color": "green"},{"text": "/trigger jkat.tpa.ok","color": "yellow"}]},"clickEvent": {"action": "run_command","value": "/trigger jkat.tpa.ok"}},"  ",{"text": "【拒绝传送】","color": "red","hoverEvent": {"action": "show_text","contents": [{"text": "【拒绝传送】\n","color": "red"},{"text": "/trigger jkat.tpa.ok set -1","color": "yellow"}]},"clickEvent": {"action": "run_command","value": "/trigger jkat.tpa.ok set -1"}}]
execute as @s[scores={jkat.tpahere=1..}] if entity @p[tag=jkat.tpa.found,distance=.1..] run scoreboard players set @s jkat.mode 4

execute as @s[tag=jkat.tpa.found] run tellraw @s {"text": "你不能传送自己！","color": "gold"}
execute unless entity @p[tag=jkat.tpa.found] run tellraw @s {"text": "该玩家不在线！","color": "gold"}

# 重置
scoreboard players operation @s jkat.wait = #wait_tpa jkat.mem
scoreboard players set @s[gamemode=creative] jkat.wait 5
tag @s remove jkat.tpa.ing
tag @a remove jkat.tpa.found