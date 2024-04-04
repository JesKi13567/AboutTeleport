scoreboard players reset @s jkat.leavegame
tellraw @s[scores={jkat.mode=1..}] {"text": "因为你退出，之前的传送失效了！","color": "gold"}
scoreboard players set @s jkat.mode 0