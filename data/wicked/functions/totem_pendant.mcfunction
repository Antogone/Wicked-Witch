##
 # totem_pendant.mcfunction
 # 
 #
 # Created by Antogone.
##
schedule function wicked:clear_tot 5t
advancement revoke @s only wicked:totem_pendant 
execute as @s[tag=house] run function wicked:set_house/house

execute as @s[tag=no_house] run effect give @s resistance 15 255 true
execute as @s[tag=no_house] run effect give @s instant_health 1 255 true