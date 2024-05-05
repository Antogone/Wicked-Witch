##
 # selector.mcfunction
 # 
 #
 # Created by Antogone.
##


execute as @s[predicate=wicked:is_sneaking] at @s run particle item{item: "minecraft:lime_stained_glass"} ~ ~1 ~ 0.2 0.3 0.2 0.01 5


## Affichage 
#1. Everyone
#2.Wicked witch
execute as @s[tag=!wicked,scores={s=40..}] run tellraw @s ["",{"text":"Dimension : "},{"storage":"wicked.tellraw","nbt":"silver.overworld","interpret":true},{"text":" "},{"storage":"wicked.tellraw","nbt":"silver.nether","interpret":true},{"text":" "},{"storage":"wicked.tellraw","nbt":"silver.end","interpret":true}]
execute as @s[tag=wicked,scores={s=40..}] run tellraw @s ["",{"text":"Dimension : "},{"storage":"wicked.tellraw","nbt":"silver.overworld","interpret":true},{"text":" "},{"storage":"wicked.tellraw","nbt":"silver.house","interpret":true},{"text":" "},{"storage":"wicked.tellraw","nbt":"silver.nether","interpret":true},{"text":" "},{"storage":"wicked.tellraw","nbt":"silver.end","interpret":true}]



###### TELEPORTATION OVERWORLD
execute as @s[scores={choose=0}] at @s run function wicked:silver_slippers/overworld

###### TELEPORTATION NETHER
execute as @s[scores={choose=1}] at @s run function wicked:silver_slippers/nether

#########TELEPORTATION END 
execute as @s[scores={choose=2}] at @s run function wicked:silver_slippers/end


#########TELEPORTATION MAISON
execute as @s[tag=wicked,scores={choose=4}] at @s run function wicked:set_house/house
