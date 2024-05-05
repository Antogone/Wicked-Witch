##
 # exec_nomobs.mcfunction
 # 
 #
 # Created by Antogone.
##
## Small
execute as @e[tag=!large] at @s run kill @e[type=#minecraft:hostile,dx=14,dz=14,dy=15]
execute as @e[tag=!large] at @s run kill @e[type=#minecraft:hostile,dx=-14,dz=14,dy=15]
execute as @e[tag=!large] at @s run kill @e[type=#minecraft:hostile,dx=-14,dz=-14,dy=15]
execute as @e[tag=!large] at @s run kill @e[type=#minecraft:hostile,dx=14,dz=-14,dy=15]


## Large
execute as @e[tag=large] at @s run kill @e[type=#minecraft:hostile,dx=27,dz=27,dy=28]
execute as @e[tag=large] at @s run kill @e[type=#minecraft:hostile,dx=-27,dz=27,dy=28]
execute as @e[tag=large] at @s run kill @e[type=#minecraft:hostile,dx=-27,dz=-27,dy=28]
execute as @e[tag=large] at @s run kill @e[type=#minecraft:hostile,dx=27,dz=-27,dy=28]


