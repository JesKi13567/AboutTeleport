$execute unless score #BAN.$(type).overworld jkat.int matches 1 run data modify entity @n[type=text_display, tag=jkat, tag=txt] text set value [{text: "(", color: "green"}, {translate: "flat_world_preset.minecraft.overworld"}, ")"]
$execute if score #BAN.$(type).overworld jkat.int matches 1 run data modify entity @n[type=text_display, tag=jkat, tag=txt] text set value [{text: "(", color: "red"}, {translate: "flat_world_preset.minecraft.overworld"}, ")"]
$summon marker ~ ~ ~ {Tags: ["jkat", "module", "$(type).overworld"]}
$data modify entity @n[type=marker, tag=jkat, tag=module, tag=$(type).overworld] CustomName set from entity @n[type=text_display, tag=jkat, tag=txt] text

$execute unless score #BAN.$(type).the_nether jkat.int matches 1 run data modify entity @n[type=text_display, tag=jkat, tag=txt] text set value [{text: "(", color: "green"}, {translate: "advancements.nether.root.title"}, ")"]
$execute if score #BAN.$(type).the_nether jkat.int matches 1 run data modify entity @n[type=text_display, tag=jkat, tag=txt] text set value [{text: "(", color: "red"}, {translate: "advancements.nether.root.title"}, ")"]
$summon marker ~ ~ ~ {Tags: ["jkat", "module", "$(type).the_nether"]}
$data modify entity @n[type=marker, tag=jkat, tag=module, tag=$(type).the_nether] CustomName set from entity @n[type=text_display, tag=jkat, tag=txt] text

$execute unless score #BAN.$(type).the_end jkat.int matches 1 run data modify entity @n[type=text_display, tag=jkat, tag=txt] text set value [{text: "(", color: "green"}, {translate: "advancements.end.root.title"}, ")"]
$execute if score #BAN.$(type).the_end jkat.int matches 1 run data modify entity @n[type=text_display, tag=jkat, tag=txt] text set value [{text: "(", color: "red"}, {translate: "advancements.end.root.title"}, ")"]
$summon marker ~ ~ ~ {Tags: ["jkat", "module", "$(type).the_end"]}
$data modify entity @n[type=marker, tag=jkat, tag=module, tag=$(type).the_end] CustomName set from entity @n[type=text_display, tag=jkat, tag=txt] text
