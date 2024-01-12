##
 # teleport.mcfunction
 # 
 #
 # Created by Antogone.
##
$execute in $(dim) positioned $(x) $(y) $(z) run tp ~ ~ ~
$execute as @e[tag=accp] run execute in $(dim) positioned $(x) $(y) $(z) run tp ~ ~ ~


execute at @p[tag=wicked] run function wicked:particle
execute at @p[tag=wicked] run function wicked:particle


execute at @e[tag=accp] run function wicked:particle 
execute at @e[tag=accp] run function wicked:particle 
execute at @e[tag=accp] run function wicked:particle 

playsound minecraft:entity.enderman.teleport master @a

tag @e[tag=accp] remove accp