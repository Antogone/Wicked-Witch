##
 # nether_transformation.mcfunction
 # 
 #
 # Created by Antogone.
##
execute store result storage wicked.tep Temp.x double 1 run scoreboard players operation $x x_temp /= $net net_value
execute if score $y y_temp matches 110.. run scoreboard players set $y y_temp 64
execute store result storage wicked.tep Temp.y double 1 run scoreboard players get $y y_temp
execute store result storage wicked.tep Temp.z double 1 run scoreboard players operation $z z_temp /= $net net_value


