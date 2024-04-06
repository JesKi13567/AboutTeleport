scoreboard players reset #temp jkat.mem

# 循环遍历所有玩家及其id分数
function jkat:trigger/run/tpa/loop

tellraw @s ["",{"text": "玩家列表显示完毕。\n","color": "gold"},{"text": "【请求传送过去】","color": "yellow","clickEvent": {"action": "suggest_command","value": "/trigger jkat.tpa set "}},"  ",{"text": "【请求传送过来】","color": "aqua","clickEvent": {"action": "suggest_command","value": "/trigger jkat.tpahere set "}},{"text": "\n点击【选项】后输入分数来请求玩家传送。","color": "gold"}]

scoreboard players reset @s jkat.show