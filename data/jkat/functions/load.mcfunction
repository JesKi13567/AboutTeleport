# 每次加载
scoreboard objectives add jkat.mem dummy "计数"
execute unless score #state jkat.mem matches 1 run function jkat:init
tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text": "[","color": "red"},{"text": "关于传送","color": "gold"},{"text": "]","color": "red"},{"text": " 数据包已启用！","color": "green"}," 作者：",{"text": "JK137","color": "aqua","clickEvent": {"action": "open_url","value": "https://github.com/JesKi13567"},"hoverEvent": {"action": "show_text","value": "查看作者 Github 页面"}},"\n",{"text": "[","color": "red"},{"text": "关于传送","color": "gold"},{"text": "]","color": "red"},{"text": "【获得管理指南】","color": "light_purple","clickEvent": {"action": "run_command","value": "/function jkat:op/book"},"hoverEvent": {"action": "show_text","contents": {"text": "仅管理员能获取","color": "light_purple","italic": false}}},"  ",{"text": "【获得玩家指南】","color": "green","clickEvent": {"action": "run_command","value": "/trigger jkat.book"},"hoverEvent": {"action": "show_text","contents": {"text": "/trigger jkat.book","color": "green","italic": false}}}]