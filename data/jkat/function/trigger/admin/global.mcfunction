scoreboard players enable @s jkat.admin.trigger

execute as @s[scores={jkat.admin.trigger=1}] run function jkat:op/guide
execute as @s[scores={jkat.admin.trigger=2}] run function jkat:op/panel/show
execute as @s[scores={jkat.admin.trigger=3}] run function jkat:trigger/run/warp/op/list/0
execute as @s[scores={jkat.admin.trigger=4}] run tellraw @s ["", {text: "[关于传送] ", color: "gold"}, {text: "地标：", color: "aqua"}, {text: "[创建]", color: "green", click_event: {action: "suggest_command", command: "/function jkat:trigger/run/warp/op/set {id: 1, name: '\"名字\"'}"}}, "  ", {text: "[改名]", color: "yellow", click_event: {action: "suggest_command", command: "/function jkat:trigger/run/warp/op/modify {id: 1, name: '\"名字\"'}"}}]
execute as @s[scores={jkat.admin.trigger=7}] run function jkat:pearl/craft/get
execute as @s[scores={jkat.admin.trigger=8}] run function jkat:trigger/run/spawn/op/set
execute as @s[scores={jkat.admin.trigger=9}] run function jkat:trigger/run/spawn/op/remove

execute as @s[scores={jkat.admin.trigger=10}] run function jkat:op/panel/gamerule {rule: 'send_command_feedback', value: 'false'}
execute as @s[scores={jkat.admin.trigger=11}] run function jkat:op/panel/gamerule {rule: 'send_command_feedback', value: 'true'}

execute as @s[scores={jkat.admin.trigger=12}] run function jkat:op/panel/switcher {id: 'back'}
execute as @s[scores={jkat.admin.trigger=13}] run function jkat:op/panel/switcher {id: 'tpa'}
execute as @s[scores={jkat.admin.trigger=14}] run function jkat:op/panel/switcher {id: 'tpahere'}
execute as @s[scores={jkat.admin.trigger=15}] run function jkat:op/panel/switcher {id: 'tpr.overworld'}
execute as @s[scores={jkat.admin.trigger=16}] run function jkat:op/panel/switcher {id: 'tpr.the_nether'}
execute as @s[scores={jkat.admin.trigger=17}] run function jkat:op/panel/switcher {id: 'tpr.the_end'}
execute as @s[scores={jkat.admin.trigger=18}] run function jkat:op/panel/switcher {id: 'home.overworld'}
execute as @s[scores={jkat.admin.trigger=19}] run function jkat:op/panel/switcher {id: 'home.the_nether'}
execute as @s[scores={jkat.admin.trigger=20}] run function jkat:op/panel/switcher {id: 'home.the_end'}

execute as @s[scores={jkat.admin.trigger=21}] run function jkat:op/panel/switcher {id: 'lift_v'}
execute as @s[scores={jkat.admin.trigger=22}] run function jkat:op/panel/switcher {id: 'lift_h'}
execute as @s[scores={jkat.admin.trigger=23}] run function jkat:op/panel/switcher {id: 'lift_sound'}

execute as @s[scores={jkat.admin.trigger=31}] run function jkat:op/panel/switcher {id: 'pearl'}

execute as @s[scores={jkat.admin.trigger=1..}] run function jkat:trigger/admin/reset
