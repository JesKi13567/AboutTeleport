advancement revoke @s only jkat:pearl/use/ride
# 冷却
execute as @s[scores={jkat.wait.pearl=1..}] run function jkat:pearl/use/ride_wait
execute as @s[scores={jkat.wait.pearl=0}] run function jkat:pearl/use/ride_real