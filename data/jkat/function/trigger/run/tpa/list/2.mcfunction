# 被选中玩家
tellraw @p[scores={jkat.list=1..}] ["", {text: "--> ", color: "gray"}, {text: "[", color: "gray"}, {score: {name: "@s", objective: "jkat.id"}, color: "yellow"}, {text: "]", color: "gray"}, "  ", {selector: "@s"}]
scoreboard players set @s jkat.list.ed 1
scoreboard players reset #tpa.order jkat.int
