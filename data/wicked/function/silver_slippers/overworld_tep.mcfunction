#eart_tep.mcfunction
# Blind Animaitons
effect give @s blindness 2 255 true

# get data 
data modify storage wicked.tep Temp.Pos set value [0d,0d,0d]

function wicked:silver_slippers/get_data
data modify storage wicked.tep Temp.dim set value "minecraft:overworld"

execute at @s run tag @e[predicate=wicked:accompagnant,distance=..3] add accp


#If nether 
execute as @s at @s if dimension the_nether run function wicked:silver_slippers/nether_to_overworld_transformation

# Teleport players
execute as @s run function wicked:silver_slippers/teleport with storage wicked.tep Temp

effect give @s slow_falling 10 5 true
effect give @e[tag=accp] slow_falling 10 5 true

tag @s add phase

schedule function wicked:silver_slippers/phase 10t
execute as @e[tag=accp] run function wicked:silver_slippers/teleport with storage wicked.tep Temp


tag @e[tag=accp,type=!cat] remove accp
# data remove storage wicked.tep Temp
return 0