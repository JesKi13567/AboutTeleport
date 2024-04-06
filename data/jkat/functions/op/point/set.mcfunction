# 区分是否使用过
execute unless score #pd0 jkat.mem matches 1 run function jkat:op/point/init
execute unless score #pd1_ jkat.mem matches 1 run function jkat:op/point/init
execute unless score #pd1 jkat.mem matches 1 run function jkat:op/point/init
execute if score #pd0 jkat.mem matches 1 if score #pd1_ jkat.mem matches 1 if score #pd1 jkat.mem matches 1 run function jkat:op/point/manual