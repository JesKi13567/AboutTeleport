# 减少冷却
scoreboard players remove @s jkat.wait 1

# 冷却中禁用触发器
scoreboard players reset @s jkat.spawn
scoreboard players reset @s jkat.tpr
scoreboard players reset @s jkat.tpa
scoreboard players reset @s jkat.tpahere
scoreboard players reset @s jkat.back
scoreboard players reset @s jkat.home
scoreboard players reset @s jkat.warp

# 检测移动
execute as @s[scores={jkat.mode=1..,jkat.check.walk=1..}] run function jkat:trigger/fail/moved
execute as @s[scores={jkat.mode=1..,jkat.check.run=1..}] run function jkat:trigger/fail/moved
execute as @s[scores={jkat.mode=1..,jkat.check.crouch=1..}] run function jkat:trigger/fail/moved
execute as @s[scores={jkat.mode=1..,jkat.check.jump=1..}] run function jkat:trigger/fail/moved
execute as @s[scores={jkat.mode=1..,jkat.check.swim=1..}] run function jkat:trigger/fail/moved
execute as @s[scores={jkat.mode=1..,jkat.check.damage.get=1..}] run function jkat:trigger/fail/moved
execute as @s[scores={jkat.mode=1..,jkat.check.damage.resist=1..}] run function jkat:trigger/fail/moved