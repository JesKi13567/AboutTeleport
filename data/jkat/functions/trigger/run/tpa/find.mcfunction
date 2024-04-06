## 检查被请求玩家有没有接受传送
# 标记自己
tag @s add jkat_tpa_self

# 寻找相同id的玩家
execute as @a[distance=.1..] if score @s[scores={jkat.tpa.flag.ok=1}] jkat.tpa.id.receive = @p[tag=jkat_tpa_self] jkat.id run tag @s add jkat_tpa_accept
execute as @a[distance=.1..] if score @s[scores={jkat.tpa.flag.ok=-1}] jkat.tpa.id.receive = @p[tag=jkat_tpa_self] jkat.id run tag @s add jkat_tpa_deny

# 结算
execute if entity @p[tag=jkat_tpa_accept] run function jkat:trigger/run/tpa/accept
execute if entity @p[tag=jkat_tpa_deny] run function jkat:trigger/run/tpa/deny

# 重置
tag @s remove jkat_tpa_self
tag @a remove jkat_tpa_accept
tag @a remove jkat_tpa_deny