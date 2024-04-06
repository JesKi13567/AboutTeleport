advancement revoke @s only jkat:pearl/craft/line
clear @s knowledge_book 1
execute unless score #ban_pearl_line jkat.mem matches 1 run function jkat:pearl/craft/line_get
execute if score #ban_pearl_line jkat.mem matches 1 run function jkat:pearl/craft/line_fail