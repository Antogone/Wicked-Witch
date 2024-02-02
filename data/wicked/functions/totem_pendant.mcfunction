##
 # totem_pendant.mcfunction
 # 
 #
 # Created by Antogone.
##
effect give @s resistance 15 127 true
effect give @s instant_health 1 127 true
effect give @s absorption 15 5 true

schedule function wicked:clear_tot 5t
advancement revoke @s only wicked:totem_pendant 

execute as @s[tag=house] run function wicked:set_house/house

