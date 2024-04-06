## 实际传送
# 标记自己
tag @s[scores={jkat.tpa.flag.tp=1}] add jkat_tpa_self

# 查询有无接受
execute as @a[distance=.1..,scores={jkat.tpa.flag.ok=1}] if score @s jkat.tpa.id.receive = @p[tag=jkat_tpa_self] jkat.id run tag @s add jkat_tpa_target
execute unless entity @p[tag=jkat_tpa_target] run tellraw @s {"text": "传送无响应。","color": "gold"}
execute if entity @p[tag=jkat_tpa_target] run tellraw @s {"text": "传送成功！","color": "gold"}

# 去
execute as @s[scores={jkat.mode=3}] if entity @p[tag=jkat_tpa_target] run function jkat:trigger/update
tp @s[scores={jkat.mode=3}] @p[tag=jkat_tpa_target]

# 来
execute as @s[scores={jkat.mode=4}] as @p[tag=jkat_tpa_target] run function jkat:trigger/update
tp @p[tag=jkat_tpa_target] @s[scores={jkat.mode=4}]

# 重置
scoreboard players reset @s jkat.tpa.id
scoreboard players set @s jkat.tpa.flag.tp 0
scoreboard players reset @a[tag=jkat_tpa_target] jkat.tpa.flag.ok
scoreboard players set @a[tag=jkat_tpa_target] jkat.tpa.id.receive 0
tag @s remove jkat_tpa_self
tag @a remove jkat_tpa_target