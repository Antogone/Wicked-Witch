##
 # nether_transformation.mcfunction
 # 
 #
 # Created by Antogone.
##
execute store result storage wicked.tep Temp.x double 1 run scoreboard players operation $x x_temp *= $net net_value
execute store result storage wicked.tep Temp.y double 1 run data get entity @s Pos[1]
execute store result storage wicked.tep Temp.z double 1 run scoreboard players operation $z z_temp *= $net net_value