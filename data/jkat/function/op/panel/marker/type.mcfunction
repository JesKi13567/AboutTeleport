$execute unless score #BAN.$(type) jkat.int matches 1 run data modify entity @n[type=text_display, tag=jkat, tag=txt] text set value [{text: "(", color: "green"}, {storage: "jk:at", nbt: "txt.button.$(name)", interpret: true}, ")"]
$execute if score #BAN.$(type) jkat.int matches 1 run data modify entity @n[type=text_display, tag=jkat, tag=txt] text set value [{text: "(", color: "red"}, {storage: "jk:at", nbt: "txt.button.$(name)", interpret: true}, ")"]

$summon marker ~ ~ ~ {Tags: ["jkat", "module", "$(type)"]}
$data modify entity @n[type=marker, tag=jkat, tag=module, tag=$(type)] CustomName set from entity @n[type=text_display, tag=jkat, tag=txt] text
