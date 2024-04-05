scoreboard players operation @s jkat.home.num = @s jkat.home
scoreboard players reset @s jkat.home
scoreboard players set @s[scores={jkat.home.num=1..5}] jkat.mode 6
scoreboard players set @s jkat.home.flag 0

execute if score #num_home jkat.mem matches 1.. as @s[scores={jkat.home.num=1}] unless score @s jkat.home.x.1 matches 0.. run scoreboard players remove @s jkat.home.flag 1
execute if score #num_home jkat.mem matches 1.. as @s[scores={jkat.home.num=1}] unless score @s jkat.home.x.1 matches ..0 run scoreboard players remove @s jkat.home.flag 1
execute if score #num_home jkat.mem matches 2.. as @s[scores={jkat.home.num=2}] unless score @s jkat.home.x.2 matches 0.. run scoreboard players remove @s jkat.home.flag 1
execute if score #num_home jkat.mem matches 2.. as @s[scores={jkat.home.num=2}] unless score @s jkat.home.x.2 matches ..0 run scoreboard players remove @s jkat.home.flag 1
execute if score #num_home jkat.mem matches 3.. as @s[scores={jkat.home.num=3}] unless score @s jkat.home.x.3 matches 0.. run scoreboard players remove @s jkat.home.flag 1
execute if score #num_home jkat.mem matches 3.. as @s[scores={jkat.home.num=3}] unless score @s jkat.home.x.3 matches ..0 run scoreboard players remove @s jkat.home.flag 1
execute if score #num_home jkat.mem matches 4.. as @s[scores={jkat.home.num=4}] unless score @s jkat.home.x.4 matches 0.. run scoreboard players remove @s jkat.home.flag 1
execute if score #num_home jkat.mem matches 4.. as @s[scores={jkat.home.num=4}] unless score @s jkat.home.x.4 matches ..0 run scoreboard players remove @s jkat.home.flag 1
execute if score #num_home jkat.mem matches 5.. as @s[scores={jkat.home.num=5}] unless score @s jkat.home.x.5 matches 0.. run scoreboard players remove @s jkat.home.flag 1
execute if score #num_home jkat.mem matches 5.. as @s[scores={jkat.home.num=5}] unless score @s jkat.home.x.5 matches ..0 run scoreboard players remove @s jkat.home.flag 1

execute as @s[scores={jkat.home.flag=0}] run function jkat:trigger/run/home/banned
execute as @s[scores={jkat.home.flag=-1}] run function jkat:trigger/run/home/exist
execute as @s[scores={jkat.home.flag=-2}] run function jkat:trigger/run/home/fail