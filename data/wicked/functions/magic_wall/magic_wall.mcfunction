##
 # magic_wall.mcfunction
 # 
 #
 # Created by Antogone.
##
##########################
# MAGIC WALL
##########################

# CREATION
execute as @a[tag=wicked,scores={spell=4}] run function wicked:magic_wall/give_crea

execute as @e[tag=wall2,type=slime] at @s run function wicked:magic_wall/wall2


execute as @e[tag=wall] at @s run function wicked:magic_wall/set_block



# DESTRUCTION
execute as @a[tag=wicked,scores={spell=5}] run function wicked:magic_wall/give_undo

execute as @e[tag=dwall2,type=slime] at @s run function wicked:magic_wall/remove



