# 每次加载
scoreboard objectives add jkat.int dummy "记分板"
execute unless score #loaded jkat.int matches 1 run function jkat:init
tellraw @a [{text: "[关于传送] ", color: "gold"}, {text: "【获得管理指南】", color: "light_purple", click_event: {action: "run_command", command: "/function jkat:op/guide"}, hover_event: {action: "show_text", value: {text: "仅管理员能获取", color: "light_purple", italic: false}}}, " ", {text: "【获得玩家指南】", color: "green", click_event: {action: "run_command", command: "/trigger jkat.guide"}, hover_event: {action: "show_text", value: {text: "/trigger jkat.guide", color: "green", italic: false}}}]
