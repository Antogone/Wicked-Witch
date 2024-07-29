##
 # exec_small_self.mcfunction
 # 
 #
 # Created by Antogone.
##
execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=14,dz=14,dy=15] run function wicked:cauldron/protection/effect_protect
execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-14,dz=14,dy=15] run function wicked:cauldron/protection/effect_protect
execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-14,dz=-14,dy=15] run function wicked:cauldron/protection/effect_protect
execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=14,dz=-14,dy=15] run function wicked:cauldron/protection/effect_protect