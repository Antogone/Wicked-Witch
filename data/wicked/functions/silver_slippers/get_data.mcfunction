##
 # get_data.mcfunction
 # 
 #
 # Created by Antogone.
##
execute store result storage wicked.tep Temp.x double 1 run data get entity @s Pos[0]
execute store result storage wicked.tep Temp.y double 1 run data get entity @s Pos[1]
execute store result storage wicked.tep Temp.z double 1 run data get entity @s Pos[2]


execute store result score $x x_temp run data get entity @s Pos[0]
execute store result score $y y_temp run data get entity @s Pos[1]
execute store result score $z z_temp run data get entity @s Pos[2]