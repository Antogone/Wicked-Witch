##
 # teleport.mcfunction
 # 
 #
 # Created by Antogone.
##
$execute in $(dim) positioned $(x) $(y) $(z) run tp ~ ~ ~
execute as @s run function wicked:particle
execute as @s run function wicked:particle

execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~
execute at @s run playsound entity.witch.celebrate master @s ~ ~ ~