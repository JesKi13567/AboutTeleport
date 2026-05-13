scoreboard players reset #tpa.order jkat.int
scoreboard players set @a[gamemode=!spectator] jkat.list.ed 0
function jkat:trigger/run/tpa/list/1

tellraw @s ["", {text: "玩家列表显示完毕。\n", color: "gold"}, {text: "【请求传送过去】", color: "yellow", click_event: {action: "suggest_command", command: "/trigger jkat.tpa set "}}, " ", {text: "【请求传送过来】", color: "aqua", click_event: {action: "suggest_command", command: "/trigger jkat.tpahere set "}}, {text: "\n点击【选项】后输入分数来请求玩家传送。", color: "gold"}]

scoreboard players reset @s jkat.list
