# 记录传送位置
function jkat:trigger/before

## 模式编号
# 1 主城，直接tp记录点
execute as @s[scores={jkat.mode=1}] run function jkat:trigger/run/spawn

# 2 随机，半径1k格
execute as @s[scores={jkat.mode=2}] run function jkat:trigger/run/tpr

# 3|4 请求传送玩家去|来
execute as @s[scores={jkat.mode=3..4}] run function jkat:trigger/run/tpa/ready

# 5 返回
execute if entity @e[limit=1,tag=jkat_marker_tp] as @s[scores={jkat.mode=5}] run function jkat:trigger/run/back

# 6 回家
execute if entity @e[limit=1,tag=jkat_marker_tp] as @s[scores={jkat.mode=6}] run function jkat:trigger/run/home

# 7 地标
execute if entity @e[limit=1,tag=jkat_marker_tp] as @s[scores={jkat.mode=7}] run function jkat:trigger/run/warp

# 中继点消失
execute unless entity @e[limit=1,tag=jkat_marker_tp] run tellraw @s[scores={jkat.mode=5..7}] {"text": "传送中继点消失，请联系管理员！","color": "gold"}

## 传送完毕
scoreboard players set @s jkat.mode 0
scoreboard players operation @s jkat.wait = #wait_cd jkat.mem
scoreboard players set @s[gamemode=creative] jkat.wait 5