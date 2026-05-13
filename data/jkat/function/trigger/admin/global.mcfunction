scoreboard players enable @s jkat.admin.trigger

execute as @s[scores={jkat.admin.trigger=1}] run function jkat:op/guide
execute as @s[scores={jkat.admin.trigger=2}] run function jkat:op/panel/show
execute as @s[scores={jkat.admin.trigger=7}] run function jkat:pearl/craft/get
execute as @s[scores={jkat.admin.trigger=8}] run function jkat:trigger/run/spawn/op/set
execute as @s[scores={jkat.admin.trigger=9}] run function jkat:trigger/run/spawn/op/remove

execute as @s[scores={jkat.admin.trigger=11}] run function jkat:op/panel/switcher {id: 'tpr'}
execute as @s[scores={jkat.admin.trigger=12}] run function jkat:op/panel/switcher {id: 'back'}
execute as @s[scores={jkat.admin.trigger=13}] run function jkat:op/panel/switcher {id: 'tpa'}
execute as @s[scores={jkat.admin.trigger=14}] run function jkat:op/panel/switcher {id: 'tpahere'}

execute as @s[scores={jkat.admin.trigger=21}] run function jkat:op/panel/switcher {id: 'lift_v'}
execute as @s[scores={jkat.admin.trigger=22}] run function jkat:op/panel/switcher {id: 'lift_h'}
execute as @s[scores={jkat.admin.trigger=23}] run function jkat:op/panel/switcher {id: 'lift_sound'}

execute as @s[scores={jkat.admin.trigger=31}] run function jkat:op/panel/switcher {id: 'pearl'}

execute as @s[scores={jkat.admin.trigger=101..199}] run function jkat:trigger/admin/warp

execute as @s[scores={jkat.admin.trigger=1..}] run function jkat:trigger/admin/reset
