execute unless entity @e[limit=1,distance=..5,type=eye_of_ender] run clear @s[gamemode=!creative] ender_eye{jkat: ["pearl", "ride"]} 1
kill @e[limit=1,distance=..5,type=eye_of_ender]
scoreboard players operation @s jkat.wait.pearl = #wait_pearl jkat.mem
scoreboard players set @s[gamemode=creative] jkat.wait.pearl 2

# 模拟丢出
execute anchored eyes run summon ender_pearl ^ ^ ^.5 {Tags: ["jkat", "jkat_pearl_ride"]}
playsound entity.ender_pearl.throw player @a[distance=..8]

# 骑乘
ride @s dismount
ride @s mount @e[limit=1,distance=..5,tag=jkat_pearl_ride]

# 投掷
data modify entity @e[tag=jkat_pearl_ride,limit=1] Rotation set from entity @s Rotation
execute at @e[tag=jkat_pearl_ride,limit=1] run summon marker ^ ^ ^1 {Tags: ["jkat", "jkat_marker_pos"]}
execute store result score #x1 jkat.mem run data get entity @e[tag=jkat_pearl_ride,limit=1] Pos[0] 10
execute store result score #y1 jkat.mem run data get entity @e[tag=jkat_pearl_ride,limit=1] Pos[1] 10
execute store result score #z1 jkat.mem run data get entity @e[tag=jkat_pearl_ride,limit=1] Pos[2] 10
execute store result score #x2 jkat.mem run data get entity @e[tag=jkat_marker_pos,limit=1] Pos[0] 10
execute store result score #y2 jkat.mem run data get entity @e[tag=jkat_marker_pos,limit=1] Pos[1] 10
execute store result score #z2 jkat.mem run data get entity @e[tag=jkat_marker_pos,limit=1] Pos[2] 10
execute store result entity @e[tag=jkat_pearl_ride,limit=1] Motion[0] double 0.15 run scoreboard players operation #x2 jkat.mem -= #x1 jkat.mem
execute store result entity @e[tag=jkat_pearl_ride,limit=1] Motion[1] double 0.15 run scoreboard players operation #y2 jkat.mem -= #y1 jkat.mem
execute store result entity @e[tag=jkat_pearl_ride,limit=1] Motion[2] double 0.15 run scoreboard players operation #z2 jkat.mem -= #z1 jkat.mem

# 清理
tag @e[tag=jkat] remove jkat_pearl_ride
kill @e[tag=jkat_marker_pos]