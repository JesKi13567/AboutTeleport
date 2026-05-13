$execute unless score #BAN.$(type) jkat.int matches 1 run summon marker ~ ~ ~ {Tags: ["jkat", "jkat_settings", "$(type)"], CustomName: {text: "($(name))", color: "green"}}
$execute if score #BAN.$(type) jkat.int matches 1 run summon marker ~ ~ ~ {Tags: ["jkat", "jkat_settings", "$(type)"], CustomName: {text: "($(name))", color: "red"}}
