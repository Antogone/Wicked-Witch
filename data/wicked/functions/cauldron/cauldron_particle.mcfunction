##
 # cauldron_particle.mcfunction
 # 
 #
 # Created by Antogone.
##

########## PARTICLE 

execute as @e[tag=c_spell14,tag=!large] at @s positioned ~ ~ ~ run function wicked:cauldron/particle/alchemymod_2
execute as @e[tag=c_spell,tag=!large] at @s anchored eyes run function wicked:cauldron/particle/alchemymod_2


execute as @e[tag=c_spell28,tag=large] at @s positioned ~ ~ ~ run function wicked:cauldron/particle/alchemymod_32
execute as @e[tag=c_spell,tag=large] at @s anchored eyes run function wicked:cauldron/particle/alchemymod_32


execute as @e[tag=c_spell,tag=!large] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:dragon_breath",Count:1b}},distance=..1] run function wicked:cauldron/extension


schedule function wicked:cauldron/cauldron_particle 10t