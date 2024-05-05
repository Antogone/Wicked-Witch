##
 # effect.mcfunction
 # 
 #
 # Created by Antogone.
##


execute as @e[tag=!ray,tag=!wicked,type=!#minecraft:dontharm,distance=..2,sort=nearest] run function wicked:wicked_ray/effect
execute as @e[tag=!ray,tag=!wicked,type=end_crystal,distance=..2,sort=nearest] run kill @s
