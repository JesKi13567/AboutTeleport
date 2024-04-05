# op指南
clear @s written_book{jkat: ["op"]}
give @s written_book{author: "JK137", display: {Name: '[{"text": "[","color": "red","italic": false},{"text": "关于传送","color": "gold"},{"text": "]","color": "red"},{"text": " 管理指南","color": "light_purple","bold": true}]'}, pages: ['["",{"text": "点击按钮以启用相关功能。","color": "dark_green"},"\\n\\n",{"text": "[设置模块]","color": "light_purple","clickEvent": {"action": "run_command","value": "/function jkat:op/settings"},"hoverEvent": {"action": "show_text","value": "显示在聊天栏。"}},"  ",{"text": "[玩家指南]","clickEvent": {"action": "run_command","value": "/trigger jkat.guide"},"hoverEvent": {"action": "show_text","contents": {"text": "/trigger jkat.guide","color": "green","italic": false}}},"\\n\\n",{"text": "【设置传送中继点】","color": "gold","bold": true,"clickEvent": {"action": "run_command","value": "/function jkat:op/point_set"},"hoverEvent": {"action": "show_text","value": "设置在当前位置，使当前区块强加载。\\n最好放到玩家没法找到的地方。\\n\\n默认位置：0 -63 0\\n\\n本数据包运行的必要（但不充分）条件，\\n若不清楚用法请无视。"}},"\\n\\n主城：",{"text":"[设置]","color":"blue","bold":true,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/function jkat:op/spawn_set"},"hoverEvent": {"action": "show_text","value": "设置在当前位置，使当前区块强加载。\\n设置后玩家可[主城]传送至此。\\n\\n默认无主城。\\n\\n使世界出生点固定在当前位置，\\n面朝Z轴正向（正南）。"}},"  ",{"text":"[清除]","color":"red","bold":true,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/function jkat:op/spawn_remove"},"hoverEvent": {"action": "show_text","value": "清除后无法再使用主城传送，\\n但仍保留此处世界出生点。"}},"\\n\\n","设置地标：","\\n",{"text": "[1]","color": "blue","clickEvent":{"action":"run_command","value":"/function jkat:trigger/run/warp/set/1"}},"  ",{"text": "[2]","color": "red","clickEvent":{"action":"run_command","value":"/function jkat:trigger/run/warp/set/2"}},"  ",{"text": "[3]","color": "blue","clickEvent":{"action":"run_command","value":"/function jkat:trigger/run/warp/set/3"}},"  ",{"text": "[4]","color": "red","clickEvent":{"action":"run_command","value":"/function jkat:trigger/run/warp/set/4"}},"  ",{"text": "[5]","color": "blue","clickEvent":{"action":"run_command","value":"/function jkat:trigger/run/warp/set/5"}},"\\n",{"text": "[6]","color": "blue","clickEvent":{"action":"run_command","value":"/function jkat:trigger/run/warp/set/6"}},"  ",{"text": "[7]","color": "red","clickEvent":{"action":"run_command","value":"/function jkat:trigger/run/warp/set/7"}},"  ",{"text": "[8]","color": "blue","clickEvent":{"action":"run_command","value":"/function jkat:trigger/run/warp/set/8"}},"  ",{"text": "[9]","color": "red","clickEvent":{"action":"run_command","value":"/function jkat:trigger/run/warp/set/9"}},"  ",{"text": "[10]","color": "blue","clickEvent":{"action":"run_command","value":"/function jkat:trigger/run/warp/set/10"}},"\\n","清除地标：","\\n",{"text": "[1]","color": "blue","clickEvent":{"action":"run_command","value":"/function jkat:trigger/run/warp/reset/1"}},"  ",{"text": "[2]","color": "red","clickEvent":{"action":"run_command","value":"/function jkat:trigger/run/warp/reset/2"}},"  ",{"text": "[3]","color": "blue","clickEvent":{"action":"run_command","value":"/function jkat:trigger/run/warp/reset/3"}},"  ",{"text": "[4]","color": "red","clickEvent":{"action":"run_command","value":"/function jkat:trigger/run/warp/reset/4"}},"  ",{"text": "[5]","color": "blue","clickEvent":{"action":"run_command","value":"/function jkat:trigger/run/warp/reset/5"}},"\\n",{"text": "[6]","color": "blue","clickEvent":{"action":"run_command","value":"/function jkat:trigger/run/warp/reset/6"}},"  ",{"text": "[7]","color": "red","clickEvent":{"action":"run_command","value":"/function jkat:trigger/run/warp/reset/7"}},"  ",{"text": "[8]","color": "blue","clickEvent":{"action":"run_command","value":"/function jkat:trigger/run/warp/reset/8"}},"  ",{"text": "[9]","color": "red","clickEvent":{"action":"run_command","value":"/function jkat:trigger/run/warp/reset/9"}},"  ",{"text": "[10]","color": "blue","clickEvent":{"action":"run_command","value":"/function jkat:trigger/run/warp/reset/10"}}]', '["强加载区块：",{"text": "[查询]","color": "dark_green","clickEvent":{"action":"run_command","value":"/forceload query"}}," ",{"text": "[提示]","color": "gray","hoverEvent": {"action": "show_text","value": "把 主城传送点 & 传送中继点 \\n放在同一个区块似乎是一个不错的选择..."}},"\\n\\n","本数据包有两种电梯，\\n",{"text": "垂直","color": "red"},"（ud）与",{"text": "水平","color": "blue"},"（fa）。\\n默认方块为",{"text": "铁块","color": "red"},"与",{"text": "金块","color": "blue"},"。\\n\\n可在以下路径修改：\\n数据包本包\\\\data\\\\\\njkat\\\\tags\\\\blocks\\\\lift","\\n\\n一些提示：\\n创造模式玩家传送无冷却。\\n\\n作者：",{"text": "JK137","color": "blue","clickEvent": {"action": "open_url","value": "https://github.com/JesKi13567"}}]'], title: "jkat", resolved: 1b, jkat: ["guide", "op"]}