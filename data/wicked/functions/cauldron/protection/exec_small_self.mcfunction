##
 # exec_small_self.mcfunction
 # 
 #
 # Created by Antogone.
##
execute as @p[tag=wicked,dx=14,dz=14,dy=15] run function wicked:cauldron/protection/effect_protect
execute as @p[tag=wicked,dx=-14,dz=14,dy=15] run function wicked:cauldron/protection/effect_protect
execute as @p[tag=wicked,dx=-14,dz=-14,dy=15] run function wicked:cauldron/protection/effect_protect 
execute as @p[tag=wicked,dx=14,dz=-14,dy=15] run function wicked:cauldron/protection/effect_protect