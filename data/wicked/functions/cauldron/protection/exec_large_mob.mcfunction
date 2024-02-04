##
 # exec_large_mob.mcfunction
 # 
 #
 # Created by Antogone.
##
execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=27,dz=27,dy=28] run function wicked:cauldron/protection/effect_protect
execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-27,dz=27,dy=28] run function wicked:cauldron/protection/effect_protect
execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-27,dz=-27,dy=28] run function wicked:cauldron/protection/effect_protect 
execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=27,dz=-27,dy=28] run function wicked:cauldron/protection/effect_protect
