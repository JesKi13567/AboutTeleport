# 新玩家
execute unless score @s jkat.id matches 0.. run function jkat:id

# 模式
execute as @s[scores={jkat.book=1..}] run function jkat:trigger/book
execute as @s[scores={jkat.leavegame=1..}] run function jkat:leavegame
execute as @s[scores={jkat.death.temp=1..}] run function jkat:trigger/before
execute as @s[scores={jkat.spawn=1..}] run function jkat:trigger/spawn
execute as @s[scores={jkat.tpr=1..}] run function jkat:trigger/tpr
execute as @s[scores={jkat.show=1..}] run function jkat:trigger/run/tpa/show
execute as @s[scores={jkat.tpa=1..}] run function jkat:trigger/tpa
execute as @s[scores={jkat.tpahere=1..}] run function jkat:trigger/tpa
execute as @s[scores={jkat.tpa.ok=1..}] run function jkat:trigger/run/tpa/accept
execute as @s[scores={jkat.tpa.ok=..-1}] run function jkat:trigger/run/tpa/deny
execute as @s[scores={jkat.back=1..}] run function jkat:trigger/back
execute as @s[scores={jkat.sethome=1..}] run function jkat:trigger/run/sethome
execute as @s[scores={jkat.home=1..}] run function jkat:trigger/run/home/yes
execute as @s[scores={jkat.warp=1..}] run function jkat:trigger/run/warp/yes
execute as @s[scores={jkat.check.jump=1..}] run function jkat:lift/start
execute as @s[scores={jkat.check.sneak=1..}] run function jkat:lift/start
execute as @s[scores={jkat.meow=1..}] run function jkat:meow

## 倒计时冷却
execute as @s[scores={jkat.wait=1..}] run function jkat:check

# 重置移动
scoreboard players reset @s jkat.check.1
scoreboard players reset @s jkat.check.2
scoreboard players reset @s jkat.check.3
scoreboard players reset @s jkat.check.4
scoreboard players reset @s jkat.check.5
scoreboard players reset @s jkat.check.6
scoreboard players reset @s jkat.check.7
scoreboard players reset @s jkat.check.8
scoreboard players reset @s jkat.check.jump
scoreboard players reset @s jkat.check.sneak

# 传送冲突
execute as @s[scores={jkat.mode=1..,jkat.wait=..2}] if entity @a[distance=.1..,scores={jkat.mode=1..,jkat.wait=..2}] run function jkat:trigger/fail/conflict

# 传送成功
execute as @s[scores={jkat.mode=1..,jkat.wait=0}] run function jkat:trigger/run/global

## trigger
scoreboard players enable @s jkat.book
scoreboard players enable @s jkat.spawn
scoreboard players enable @s jkat.tpr
scoreboard players enable @s jkat.show
scoreboard players enable @s jkat.tpa
scoreboard players enable @s jkat.tpahere
scoreboard players enable @s jkat.tpa.ok
scoreboard players enable @s jkat.back
scoreboard players enable @s jkat.sethome
scoreboard players enable @s jkat.home
scoreboard players enable @s jkat.warp
scoreboard players enable @s jkat.meow

# 传送冷却中
execute as @s[scores={jkat.mode=0,jkat.wait=1..}] run function jkat:wait

## 显示
scoreboard players operation @s jkat.wait_ = @s jkat.wait
scoreboard players operation @s jkat.wait_ /= #20 jkat.mem
title @s[nbt={SelectedItem: {tag: {jkat: ["book", "player"]}}}] actionbar ["",{"text": "ID：","color": "green"},{"score":{"name": "@s","objective": "jkat.id"},"color": "green"},"  ",{"text": "模式：","color": "gold"},{"score":{"name": "@s","objective": "jkat.mode"},"color": "gold"},"  ",{"text": "冷却：","color": "yellow"},{"score":{"name": "@s","objective": "jkat.wait_"},"color": "yellow"}]
#,"上次坐标：",{"score":{"name": "@s","objective": "jkat.last.x"}}," ",{"score":{"name": "@s","objective": "jkat.last.y"}}," ",{"score":{"name": "@s","objective": "jkat.last.z"}}," "