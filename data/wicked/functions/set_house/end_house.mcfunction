##
 # end_house.mcfunction
 # 
 #
 # Created by .
##
data modify entity @s Pos set from storage wicked.tep Temp.PosHouse

# Teleport player
tp @p[tag=wicked,limit=1] @s
effect give @p[tag=wicked] fire_resistance 10 5 true
effect give @p[tag=wicked] slow_falling 10 5 true

# Remove marker
kill @s

execute at @p[tag=wicked] run function wicked:particle
execute at @p[tag=wicked] run schedule function wicked:particle 10t
playsound minecraft:entity.enderman.teleport master @a
