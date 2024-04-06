# 请求传送标记
scoreboard players set @s[scores={jkat.tpa.ok=1..}] jkat.tpa.flag.ok 1
scoreboard players set @s[scores={jkat.tpa.ok=..-1}] jkat.tpa.flag.ok -1
scoreboard players set @s jkat.tpa.ok 0
tellraw @s[scores={jkat.tpa.id.receive=1..,jkat.tpa.flag.ok=1}] {"text": "已接受传送！","color": "gold"}
tellraw @s[scores={jkat.tpa.id.receive=1..,jkat.tpa.flag.ok=-1}] {"text": "已拒绝传送！","color": "gold"}
tellraw @s[scores={jkat.tpa.id.receive=0}] {"text": "没有待处理的传送请求。","color": "gold"}