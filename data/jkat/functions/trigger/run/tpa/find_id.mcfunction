## 检查请求玩家模式
# 标记自己
tag @s add jkat_tpa_self

# 寻找相同id的玩家
execute as @a[distance=.1..] if score @s jkat.id = @p[tag=jkat_tpa_self] jkat.tpa.id.receive run tag @s add jkat_tpa_find_id

# 结算
execute unless score @p[tag=jkat_tpa_find_id] jkat.mode matches 3..4 run scoreboard players set @s jkat.tpa.flag.ok 0
execute unless score @p[tag=jkat_tpa_find_id] jkat.mode matches 3..4 run scoreboard players set @s jkat.tpa.id.receive 0

# 重置
tag @s remove jkat_tpa_self
tag @a remove jkat_tpa_find_id