execute unless score #loaded jkat.int matches 1.. run function jkat:init/1
function jkat:op/guide
execute as @a run function jkat:trigger/guide
tellraw @a [{storage: "jk:at", nbt: "txt.jkat", interpret: true, color: "gold"}, {storage: "jk:at", nbt: "txt.tellraw.lang_set", interpret: true, color: "yellow"}]
