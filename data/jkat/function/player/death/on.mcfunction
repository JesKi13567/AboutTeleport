execute unless score #BAN.back jkat.int matches 1 as @s[scores={jkat.death.imp=1..}] run tellraw @s [{text: "点击 ", color: "gold"}, {text: "这里", color: "yellow", underlined: true, hover_event: {action: "show_text", value: "/trigger jkat.back"}, click_event: {action: "run_command", command: "/trigger jkat.back"}}, " 返回死亡点！"]

scoreboard players reset @s jkat.death.imp
scoreboard players set @s jkat.death.record 1
execute as @s[scores={jkat.mode=1.., jkat.wait=1..}] run tellraw @s {text: "传送过程中断！", color: "red"}
