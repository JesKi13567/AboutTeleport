# 被选中玩家
scoreboard players set @s jkat.list.ed 1
data modify entity @e[limit=1, type=text_display, tag=jkat, tag=tpa_list] text set value {selector: "@a[limit=1, scores={jkat.list.ed=1}]"}
data modify storage jk:at tpa.name set from entity @e[limit=1, type=text_display, tag=jkat, tag=tpa_list] text.text
function jkat:trigger/run/tpa/list/3 with storage jk:at tpa
$data modify storage jk:at tpa.dialog.actions append value {width: 60, label: {text: "$(txt_tpa)", color: "green"}, action: {type: "run_command", command: "/trigger jkat.tpa set $(n)"}}
$data modify storage jk:at tpa.dialog.actions append value {width: 60, label: {text: "$(txt_tpahere)", color: "aqua"}, action: {type: "run_command", command: "/trigger jkat.tpahere set $(n)"}}

scoreboard players reset #tpa.order jkat.int
scoreboard players set @s jkat.list.ed 2
