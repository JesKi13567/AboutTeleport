advancement revoke @s only jkat:pearl/using

execute if items entity @s[scores={jkat.wait.pearl=0}] weapon.* echo_shard[custom_data={jkat: ["pearl", "line"]}] run function jkat:pearl/use/global
