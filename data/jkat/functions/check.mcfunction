# 减少冷却及检查移动
scoreboard players remove @s jkat.wait 1
execute as @s[scores={jkat.mode=1..,jkat.check.walk=1..}] run function jkat:trigger/fail/moved
execute as @s[scores={jkat.mode=1..,jkat.check.run=1..}] run function jkat:trigger/fail/moved
execute as @s[scores={jkat.mode=1..,jkat.check.crouch=1..}] run function jkat:trigger/fail/moved
execute as @s[scores={jkat.mode=1..,jkat.check.jump=1..}] run function jkat:trigger/fail/moved
execute as @s[scores={jkat.mode=1..,jkat.check.swim=1..}] run function jkat:trigger/fail/moved
execute as @s[scores={jkat.mode=1..,jkat.check.damage.get=1..}] run function jkat:trigger/fail/moved
execute as @s[scores={jkat.mode=1..,jkat.check.damage.resist=1..}] run function jkat:trigger/fail/moved