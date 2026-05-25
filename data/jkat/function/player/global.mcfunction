execute unless score @s jkat.id matches 0.. run function jkat:player/new

# 管理员
execute as @s[scores={jkat.admin.is=1}] run function jkat:trigger/admin/global

# 玩家
scoreboard players enable @s jkat.guide
scoreboard players enable @s jkat.spawn
scoreboard players enable @s jkat.warp
scoreboard players enable @s jkat.sethome
scoreboard players enable @s jkat.home
scoreboard players enable @s jkat.tpr
scoreboard players enable @s jkat.back
scoreboard players enable @s jkat.list

## 非玩家间传送
execute as @s[scores={jkat.leavegame=1..}] run function jkat:player/death/leavegame
execute as @s[scores={jkat.death.imp=1..}] run function jkat:player/death/on
execute as @s[scores={jkat.guide=1..}] run function jkat:trigger/guide
execute as @s[scores={jkat.spawn=1..}] run function jkat:trigger/run/spawn/check
execute as @s[scores={jkat.warp=1..}] run function jkat:trigger/run/warp/check/0
execute as @s[scores={jkat.sethome=1..}] run function jkat:trigger/run/home/set/0
execute as @s[scores={jkat.home=1..}] run function jkat:trigger/run/home/check/0
execute as @s[scores={jkat.tpr=1..}] run function jkat:trigger/run/tpr/check
execute as @s[scores={jkat.back=1..}] run function jkat:trigger/run/back/check
execute as @s[scores={jkat.list=1..}] run function jkat:trigger/run/tpa/list/0

execute as @s[scores={jkat.mode=..7, jkat.wait=1..}] run function jkat:trigger/run/wait

## 玩家间传送
scoreboard players enable @s jkat.tpa
scoreboard players enable @s jkat.tpahere

execute as @s[scores={jkat.mode=8..9, jkat.wait.tpa=1..}] run function jkat:trigger/run/tpa/flag/global

execute as @s[scores={jkat.tpa=1..}] run function jkat:trigger/run/tpa/check/0
execute as @s[scores={jkat.tpahere=1..}] run function jkat:trigger/run/tpa/check/0

execute unless score @s jkat.tpa.ok matches 0 run function jkat:trigger/run/tpa/ok
scoreboard players enable @s[scores={jkat.tpa.flag.ok=0}] jkat.tpa.ok

execute as @s[scores={jkat.tpa.receive=1..}] run function jkat:trigger/run/tpa/find
scoreboard players set @s[scores={jkat.tpa.receive=0}] jkat.tpa.flag.ok 0

# 电梯
scoreboard players remove @s[scores={jkat.lift=1..}] jkat.lift 1
execute if predicate jkat:action/jump run function jkat:lift/global
execute if predicate jkat:action/sneak run function jkat:lift/global

# 珍珠
scoreboard players remove @s[scores={jkat.wait.pearl=1..}] jkat.wait.pearl 1

# 重置移动
scoreboard players reset @s jkat.check.damage.get
scoreboard players reset @s jkat.check.damage.resist

## 显示
execute if items entity @s[scores={jkat.mode=..7}] weapon.* written_book[custom_data={jkat: ["guide", "player"]}] run title @s actionbar ["", {text: "ID", color: "green"}, {storage: "jk:at", nbt: "txt.char.colon", interpret: true, color: "green"}, {score: {name: "@s", objective: "jkat.id"}, color: "green"}, "  ", {storage: "jk:at", nbt: "txt.title.mode", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.char.colon", interpret: true, color: "gold"}, {score: {name: "@s", objective: "jkat.mode"}, color: "gold"}, "  ", {text: "CD", color: "yellow"}, {storage: "jk:at", nbt: "txt.char.colon", interpret: true, color: "yellow"}, {score: {name: "@s", objective: "jkat.wait"}, color: "yellow"}]
execute if items entity @s[scores={jkat.mode=8..9}] weapon.* written_book[custom_data={jkat: ["guide", "player"]}] run title @s actionbar ["", {text: "ID", color: "green"}, {storage: "jk:at", nbt: "txt.char.colon", interpret: true, color: "green"}, {score: {name: "@s", objective: "jkat.id"}, color: "green"}, "  ", {storage: "jk:at", nbt: "txt.title.mode", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.char.colon", interpret: true, color: "gold"}, {score: {name: "@s", objective: "jkat.mode"}, color: "gold"}, {storage: "jk:at", nbt: "txt.title.p2p", interpret: true, color: "gold"}, "  ", {text: "CD", color: "yellow"}, {storage: "jk:at", nbt: "txt.char.colon", interpret: true, color: "yellow"}, {score: {name: "@s", objective: "jkat.wait.tpa"}, color: "yellow"}]
