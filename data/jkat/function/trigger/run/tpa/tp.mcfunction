tag @s add jkat_tpa_self
execute as @a[gamemode=!spectator, scores={jkat.tpa.flag.ok=1}] if score @s jkat.tpa.receive = @p[tag=jkat_tpa_self] jkat.id run tag @s add jkat_tpa_target

# 去
execute as @s[scores={jkat.mode=8}] if entity @p[tag=jkat_tpa_target] run function jkat:trigger/run/back/update
tp @s[scores={jkat.mode=8}] @p[tag=jkat_tpa_target]

# 来
execute as @s[scores={jkat.mode=9}] as @p[tag=jkat_tpa_target] at @s run function jkat:trigger/run/back/update
tp @p[tag=jkat_tpa_target] @s[scores={jkat.mode=9}]

tellraw @s [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.tpa.success", interpret: true}]
scoreboard players set @s jkat.tpa.flag.tp 0
scoreboard players set @a[tag=jkat_tpa_target] jkat.tpa.receive 0
scoreboard players reset @a[tag=jkat_tpa_target] jkat.tpa.flag.ok
tag @s remove jkat_tpa_self
tag @a remove jkat_tpa_target
