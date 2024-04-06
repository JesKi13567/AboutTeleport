tellraw @s {"text": "正在请求传送...","color": "gold"}
scoreboard players set @s jkat.tpa.flag.tp 0

# 标记自己
tag @s add jkat_tpa_self

# 寻找相同id的玩家
execute as @s[scores={jkat.tpa=1..}] as @a[scores={jkat.tpa.flag.ok=0}] if score @s jkat.id = @p[tag=jkat_tpa_self] jkat.tpa run tag @s add jkat_tpa_target
execute as @s[scores={jkat.tpahere=1..}] as @a[scores={jkat.tpa.flag.ok=0}] if score @s jkat.id = @p[tag=jkat_tpa_self] jkat.tpahere run tag @s add jkat_tpa_target

# 修改其接受id
scoreboard players operation @p[distance=.1..,tag=jkat_tpa_target] jkat.tpa.id.receive = @s jkat.id

# 去
execute as @s[scores={jkat.tpa=1..}] run tellraw @p[distance=.1..,tag=jkat_tpa_target] ["",{"selector":"@p[tag=jkat_tpa_self]"},{"text": " 想要传送到你这里，请点击选择：\n","color": "gold"},{"text": "【接受传送】","color": "green","clickEvent": {"action": "run_command","value": "/trigger jkat.tpa.ok"},"hoverEvent": {"action": "show_text","contents": [{"text": "【接受传送】\n","color": "green"},{"text": "/trigger jkat.tpa.ok","color": "yellow"}]}},"  ",{"text": "【拒绝传送】","color": "red","clickEvent": {"action": "run_command","value": "/trigger jkat.tpa.ok set -1"},"hoverEvent": {"action": "show_text","contents": [{"text": "【拒绝传送】\n","color": "red"},{"text": "/trigger jkat.tpa.ok set -1","color": "yellow"}]}}]
execute as @s[scores={jkat.tpa=1..}] if entity @p[tag=jkat_tpa_target,distance=.1..] run scoreboard players set @s jkat.mode 3

# 来
execute as @s[scores={jkat.tpahere=1..}] run tellraw @p[distance=.1..,tag=jkat_tpa_target] ["",{"selector":"@p[tag=jkat_tpa_self]"},{"text": " 想要你传送到ta那里，请点击选择：\n","color": "gold"},{"text": "【接受传送】","color": "green","clickEvent": {"action": "run_command","value": "/trigger jkat.tpa.ok"},"hoverEvent": {"action": "show_text","contents": [{"text": "【接受传送】\n","color": "green"},{"text": "/trigger jkat.tpa.ok","color": "yellow"}]}},"  ",{"text": "【拒绝传送】","color": "red","clickEvent": {"action": "run_command","value": "/trigger jkat.tpa.ok set -1"},"hoverEvent": {"action": "show_text","contents": [{"text": "【拒绝传送】\n","color": "red"},{"text": "/trigger jkat.tpa.ok set -1","color": "yellow"}]}}]
execute as @s[scores={jkat.tpahere=1..}] if entity @p[tag=jkat_tpa_target,distance=.1..] run scoreboard players set @s jkat.mode 4

execute as @s[tag=jkat_tpa_target] run tellraw @s {"text": "你不能传送自己！","color": "gold"}
execute unless entity @p[tag=jkat_tpa_target] run tellraw @s {"text": "该玩家不在线或传送被占用！","color": "gold"}

# 重置
execute if entity @p[tag=jkat_tpa_target,distance=.1..] run scoreboard players operation @s jkat.wait = #wait_tpa jkat.mem
scoreboard players operation @s jkat.tpa.id = @s jkat.tpa
scoreboard players reset @s jkat.tpa
tag @s remove jkat_tpa_self
tag @a remove jkat_tpa_target