##
 # net_tep.mcfunction
 # 
 #
 # Created by .
##
# net_value
# x,y,z_temp



effect give @p[tag=wicked,scores={equip=1,choose=0..5}] blindness 2 255 true
data modify storage wicked.tep Temp.Pos set value [0d,0d,0d]

execute store result score $x x_temp run data get entity @p[tag=wicked] Pos[0]
execute store result score $y y_temp run data get entity @p[tag=wicked] Pos[1]
execute store result score $z z_temp run data get entity @p[tag=wicked] Pos[2]


execute store result storage wicked.tep Temp.Pos[0] double 1 run scoreboard players operation $x x_temp /= $net net_value

execute if score $y y_temp matches 110.. run scoreboard players set $y y_temp 64
execute store result storage wicked.tep Temp.Pos[1] double 1 run scoreboard players get $y y_temp

execute store result storage wicked.tep Temp.Pos[2] double 1 run scoreboard players operation $z z_temp /= $net net_value


data modify entity @s Pos set from storage wicked.tep Temp.Pos

# Teleport player

tp @p[tag=wicked,limit=1] @s
effect give @p[tag=wicked] fire_resistance 10 5 true
effect give @p[tag=wicked] slow_falling 10 5 true
# Remove marker
kill @s


execute at @p[tag=wicked] run function wicked:particle 
execute at @p[tag=wicked] run function wicked:particle 
execute at @p[tag=wicked] run function wicked:particle 
execute at @p[tag=wicked] run schedule function wicked:particle 10t
execute at @p[tag=wicked] run schedule function wicked:silver_slippers/phase 1s
playsound minecraft:entity.enderman.teleport master @a

