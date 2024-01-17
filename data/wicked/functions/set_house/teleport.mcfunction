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

execute as @p[tag=wicked] at @s run playsound entity.witch.celebrate master @s ~ ~ ~
execute as @p[tag=wicked] at @s run playsound entity.enderman.teleport master @s ~ ~ ~

tag @e[tag=accp,type=!cat] remove accp