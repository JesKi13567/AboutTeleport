scoreboard players operation @s jkat.home.num = @s jkat.home
scoreboard players reset @s jkat.home
scoreboard players set @s jkat.home.flag 0
execute if score @s jkat.home.num matches 1.. if score @s jkat.home.num <= #num_home jkat.mem run scoreboard players set @s jkat.mode 6

execute store result storage jkat:temp num int 1 run scoreboard players get @s jkat.home.num
function jkat:trigger/run/home/check_real with storage jkat:temp

execute as @s[scores={jkat.home.flag=0}] run function jkat:trigger/run/home/banned
execute as @s[scores={jkat.home.flag=-1}] run function jkat:trigger/run/home/exist
execute as @s[scores={jkat.home.flag=-2}] run function jkat:trigger/run/home/fail