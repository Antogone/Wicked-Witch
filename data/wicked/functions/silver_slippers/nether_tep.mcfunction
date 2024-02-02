##
 # net_tep.mcfunction
 # 
 #
 # Created by .
##
# Blind Animaitons
effect give @s blindness 2 127 true

# get data 
data modify storage wicked.tep Temp.Pos set value [0d,0d,0d]

function wicked:silver_slippers/get_data
data modify storage wicked.tep Temp.dim set value "minecraft:the_nether"
execute at @s run tag @e[predicate=wicked:accompagnant,distance=..3] add accp


#If nether 
execute as @s at @s run function wicked:silver_slippers/overworld_to_nether_transformation

# Teleport players
execute as @s run function wicked:silver_slippers/teleport with storage wicked.tep Temp

effect give @s fire_resistance 10 5 true
effect give @s slow_falling 10 5 true
effect give @e[tag=accp] slow_falling 10 5 true
effect give @e[tag=accp] fire_resistance 10 5 true

tag @s add phase

schedule function wicked:silver_slippers/phase 10t
execute as @e[tag=accp] run function wicked:silver_slippers/teleport with storage wicked.tep Temp


tag @e[tag=accp,type=!cat] remove accp
# data remove storage wicked.tep Temp
return 0




