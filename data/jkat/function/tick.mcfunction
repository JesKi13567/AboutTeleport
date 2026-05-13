## 每刻执行
execute as @a[gamemode=!spectator] at @s run function jkat:player/global

# 设置
execute unless score #CD.wait jkat.int matches 10.. run scoreboard players set #CD.wait jkat.int 60
execute unless score #CD.success jkat.int matches 10.. run scoreboard players set #CD.success jkat.int 60
execute unless score #CD.wait_tpa jkat.int matches 100.. run scoreboard players set #CD.wait_tpa jkat.int 300
execute unless score #CD.pearl jkat.int matches 5.. run scoreboard players set #CD.pearl jkat.int 10
execute unless score #NUM.home jkat.int matches 0..5 run scoreboard players set #NUM.home jkat.int 5
execute unless score #NUM.lift_v jkat.int matches 5..131 run scoreboard players set #NUM.lift_v jkat.int 21
execute unless score #NUM.lift_h jkat.int matches 5..131 run scoreboard players set #NUM.lift_h jkat.int 21
execute unless score #NUM.pearl jkat.int matches 10.. run scoreboard players set #NUM.pearl jkat.int 20
