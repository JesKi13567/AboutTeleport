scoreboard players operation @s jkat.last.d1 = @s jkat.last.d
scoreboard players operation @s jkat.last.x1 = @s jkat.last.x
scoreboard players operation @s jkat.last.y1 = @s jkat.last.y
scoreboard players operation @s jkat.last.z1 = @s jkat.last.z

# 更新
function jkat:trigger/update

# 真·返回
execute as @s[scores={jkat.last.d1=0}] run data modify storage jkat:temp d set value overworld
execute as @s[scores={jkat.last.d1=-1}] run data modify storage jkat:temp d set value the_nether
execute as @s[scores={jkat.last.d1=1}] run data modify storage jkat:temp d set value the_end
execute store result storage jkat:temp x int 1 run scoreboard players get @s jkat.last.x1
execute store result storage jkat:temp y int 1 run scoreboard players get @s jkat.last.y1
execute store result storage jkat:temp z int 1 run scoreboard players get @s jkat.last.z1

function jkat:trigger/run/tp_real with storage jkat:temp

tellraw @s {"text": "已返回到上一地点！","color": "gold"}