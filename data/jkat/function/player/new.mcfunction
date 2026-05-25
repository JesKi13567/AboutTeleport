# 初始化玩家
recipe give @s jkat:pearl
execute store result score @s jkat.id run scoreboard players add #id jkat.int 1
scoreboard players set @s jkat.mode 0
scoreboard players set @s jkat.wait 0
scoreboard players set @s jkat.wait.pearl 0
scoreboard players set @s jkat.tpa.ok 0
scoreboard players set @s jkat.tpa.receive 0
function jkat:trigger/run/back/update
function jkat:trigger/guide
