# 请求传送标记
scoreboard players set @s[scores={jkat.tpa.ok=1..}] jkat.tpa.flag.ok 1
scoreboard players set @s[scores={jkat.tpa.ok=..-1}] jkat.tpa.flag.ok -1
scoreboard players set @s jkat.tpa.ok 0
tellraw @s[scores={jkat.tpa.receive=1.., jkat.tpa.flag.ok=1}] [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.tpa.accepted", interpret: true}]
tellraw @s[scores={jkat.tpa.receive=1.., jkat.tpa.flag.ok=-1}] [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.tpa.denied", interpret: true}]
tellraw @s[scores={jkat.tpa.receive=0}] [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.tpa.no_pending", interpret: true}]
