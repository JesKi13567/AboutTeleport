tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.tpa.request", interpret: true}]
scoreboard players set @s jkat.tpa.flag.tp 0

# 标记自己
tag @s add jkat_tpa_self

# 寻找相同id的玩家
execute as @s[scores={jkat.tpa=1..}] as @a[scores={jkat.tpa.flag.ok=0}] if score @s jkat.id = @p[tag=jkat_tpa_self] jkat.tpa run tag @s add jkat_tpa_target
execute as @s[scores={jkat.tpahere=1..}] as @a[scores={jkat.tpa.flag.ok=0}] if score @s jkat.id = @p[tag=jkat_tpa_self] jkat.tpahere run tag @s add jkat_tpa_target

# 修改其接受id
scoreboard players operation @p[tag=!jkat_tpa_self, tag=jkat_tpa_target] jkat.tpa.receive = @s jkat.id

# 去
execute as @s[tag=!jkat_tpa_target, scores={jkat.tpa=1..}] run tellraw @p[tag=jkat_tpa_target] ["", {storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {selector: "@p[tag=jkat_tpa_self]", hover_event: {action: "show_text", value: ""}}, " ", {storage: "jk:at", nbt: "txt.tellraw.tpa.type.tpa", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.char.colon", interpret: true, color: "gold"}, "\n", {storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.button.tpa.bool.accept", interpret: true, color: "green", click_event: {action: "run_command", command: "/trigger jkat.tpa.ok"}, hover_event: {action: "show_text", value: [{storage: "jk:at", nbt: "txt.button.tpa.bool.accept", interpret: true}, "\n", {text: "/trigger jkat.tpa.ok", color: "yellow"}]}}, "  ", {storage: "jk:at", nbt: "txt.button.tpa.bool.deny", interpret: true, color: "red", click_event: {action: "run_command", command: "/trigger jkat.tpa.ok set -1"}, hover_event: {action: "show_text", value: [{storage: "jk:at", nbt: "txt.button.tpa.bool.deny", interpret: true}, "\n", {text: "/trigger jkat.tpa.ok set -1", color: "yellow"}]}}]
execute as @s[tag=!jkat_tpa_target, scores={jkat.tpa=1..}] if entity @p[tag=jkat_tpa_target] run scoreboard players set @s jkat.mode 8

# 来
execute as @s[tag=!jkat_tpa_target, scores={jkat.tpahere=1..}] run tellraw @p[tag=jkat_tpa_target] ["", {storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {selector: "@p[tag=jkat_tpa_self]", hover_event: {action: "show_text", value: ""}}, " ", {storage: "jk:at", nbt: "txt.tellraw.tpa.type.tpahere", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.char.colon", interpret: true, color: "gold"}, "\n", {storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.button.tpa.bool.accept", interpret: true, color: "green", click_event: {action: "run_command", command: "/trigger jkat.tpa.ok"}, hover_event: {action: "show_text", value: [{storage: "jk:at", nbt: "txt.button.tpa.bool.accept", interpret: true}, "\n", {text: "/trigger jkat.tpa.ok", color: "yellow"}]}}, "  ", {storage: "jk:at", nbt: "txt.button.tpa.bool.deny", interpret: true, color: "red", click_event: {action: "run_command", command: "/trigger jkat.tpa.ok set -1"}, hover_event: {action: "show_text", value: [{storage: "jk:at", nbt: "txt.button.tpa.bool.deny", interpret: true}, "\n", {text: "/trigger jkat.tpa.ok set -1", color: "yellow"}]}}]
execute as @s[tag=!jkat_tpa_target, scores={jkat.tpahere=1..}] if entity @p[tag=jkat_tpa_target] run scoreboard players set @s jkat.mode 9

execute as @s[tag=jkat_tpa_target] run tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.tpa.cannot.self", interpret: true}]
execute unless entity @p[tag=jkat_tpa_target] run tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.tpa.cannot.offline", interpret: true}]
scoreboard players operation @s[scores={jkat.mode=8..9}] jkat.wait.tpa = #CD.wait_tpa jkat.int

# 重置
tag @s remove jkat_tpa_self
tag @a remove jkat_tpa_target
