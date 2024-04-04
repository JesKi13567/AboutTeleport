# 标记自己
tag @s add jkat.tpa.ready

# 查询有无接受
execute as @a[distance=.1..] if score @s jkat.tpa.get = @p[tag=jkat.tpa.ready] jkat.id run tag @s add jkat.tpa.ready2
execute unless entity @a[tag=jkat.tpa.ready2] run tellraw @s {"text": "传送无响应。","color": "gold"}
execute if entity @a[tag=jkat.tpa.ready2,scores={jkat.flag=-1}] run tellraw @s {"text": "传送被拒绝。","color": "gold"}
execute if entity @a[tag=jkat.tpa.ready2,scores={jkat.flag=1}] run tellraw @s {"text": "传送成功！","color": "gold"}

# 去
execute as @s[scores={jkat.mode=3}] if entity @p[tag=jkat.tpa.ready2,scores={jkat.flag=1}] run function jkat:trigger/update
execute as @s[scores={jkat.mode=3}] run tp @s[tag=jkat.tpa.ready] @p[tag=jkat.tpa.ready2,scores={jkat.flag=1}]

# 来
execute as @s[scores={jkat.mode=4}] as @p[tag=jkat.tpa.ready2,scores={jkat.flag=1}] run function jkat:trigger/update
execute as @s[scores={jkat.mode=4}] run tp @p[tag=jkat.tpa.ready2,scores={jkat.flag=1}] @s[tag=jkat.tpa.ready]

# 重置
scoreboard players reset @a[tag=jkat.tpa.ready2] jkat.flag
scoreboard players reset @a[tag=jkat.tpa.ready2] jkat.tpa.get
tag @a remove jkat.tpa.ready
tag @a remove jkat.tpa.ready2