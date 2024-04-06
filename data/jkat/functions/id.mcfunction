# 初始化及记录玩家id
scoreboard players add #id jkat.id 1
scoreboard players operation @s jkat.id = #id jkat.id
scoreboard players set @s jkat.mode 0
scoreboard players set @s jkat.wait 0
scoreboard players set @s jkat.wait.pearl 0
scoreboard players set @s jkat.tpa.ok 0
scoreboard players set @s jkat.tpa.id.receive 0

tellraw @s ["",{"text": "[","color": "red","italic": false},{"text": "关于传送","color": "gold"},{"text": "]","color": "red"},{"text": " 此服务器搭载了本数据包，使用 ","color": "green"},{"text": "/trigger jkat.guide","color": "yellow","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger jkat.guide"}},{"text": " 获得指南！","color": "green"}]
function jkat:trigger/guide

# 出生点记作上一地点
function jkat:trigger/update

# 初始中继点更新
execute as @s[scores={jkat.id=1}] run function jkat:op/point/init