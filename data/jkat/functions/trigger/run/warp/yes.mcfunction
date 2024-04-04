scoreboard players operation @s jkat.warp.num = @s jkat.warp
scoreboard players reset @s jkat.warp
scoreboard players set @s[scores={jkat.warp.num=1..10}] jkat.mode 7
scoreboard players set #warp jkat.mem 0

execute as @s[scores={jkat.warp.num=1}] unless score #warp jkat.warp.x.1 matches 0.. run scoreboard players remove #warp jkat.mem 1
execute as @s[scores={jkat.warp.num=1}] unless score #warp jkat.warp.x.1 matches ..0 run scoreboard players remove #warp jkat.mem 1
execute as @s[scores={jkat.warp.num=2}] unless score #warp jkat.warp.x.2 matches 0.. run scoreboard players remove #warp jkat.mem 1
execute as @s[scores={jkat.warp.num=2}] unless score #warp jkat.warp.x.2 matches ..0 run scoreboard players remove #warp jkat.mem 1
execute as @s[scores={jkat.warp.num=3}] unless score #warp jkat.warp.x.3 matches 0.. run scoreboard players remove #warp jkat.mem 1
execute as @s[scores={jkat.warp.num=3}] unless score #warp jkat.warp.x.3 matches ..0 run scoreboard players remove #warp jkat.mem 1
execute as @s[scores={jkat.warp.num=4}] unless score #warp jkat.warp.x.4 matches 0.. run scoreboard players remove #warp jkat.mem 1
execute as @s[scores={jkat.warp.num=4}] unless score #warp jkat.warp.x.4 matches ..0 run scoreboard players remove #warp jkat.mem 1
execute as @s[scores={jkat.warp.num=5}] unless score #warp jkat.warp.x.5 matches 0.. run scoreboard players remove #warp jkat.mem 1
execute as @s[scores={jkat.warp.num=5}] unless score #warp jkat.warp.x.5 matches ..0 run scoreboard players remove #warp jkat.mem 1
execute as @s[scores={jkat.warp.num=6}] unless score #warp jkat.warp.x.6 matches 0.. run scoreboard players remove #warp jkat.mem 1
execute as @s[scores={jkat.warp.num=6}] unless score #warp jkat.warp.x.6 matches ..0 run scoreboard players remove #warp jkat.mem 1
execute as @s[scores={jkat.warp.num=7}] unless score #warp jkat.warp.x.7 matches 0.. run scoreboard players remove #warp jkat.mem 1
execute as @s[scores={jkat.warp.num=7}] unless score #warp jkat.warp.x.7 matches ..0 run scoreboard players remove #warp jkat.mem 1
execute as @s[scores={jkat.warp.num=8}] unless score #warp jkat.warp.x.8 matches 0.. run scoreboard players remove #warp jkat.mem 1
execute as @s[scores={jkat.warp.num=8}] unless score #warp jkat.warp.x.8 matches ..0 run scoreboard players remove #warp jkat.mem 1
execute as @s[scores={jkat.warp.num=9}] unless score #warp jkat.warp.x.9 matches 0.. run scoreboard players remove #warp jkat.mem 1
execute as @s[scores={jkat.warp.num=9}] unless score #warp jkat.warp.x.9 matches ..0 run scoreboard players remove #warp jkat.mem 1
execute as @s[scores={jkat.warp.num=10}] unless score #warp jkat.warp.x.10 matches 0.. run scoreboard players remove #warp jkat.mem 1
execute as @s[scores={jkat.warp.num=10}] unless score #warp jkat.warp.x.10 matches ..0 run scoreboard players remove #warp jkat.mem 1

execute as @s[scores={jkat.mode=0}] run function jkat:trigger/run/warp/no
execute if score #warp jkat.mem matches -2 run function jkat:trigger/run/warp/no
execute if score #warp jkat.mem matches -1 run function jkat:trigger/run/warp/exist