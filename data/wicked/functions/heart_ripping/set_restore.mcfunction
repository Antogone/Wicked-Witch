##
 # set_restore.mcfunction
 # 
 #
 # Created by Antogone.
##
execute at @s unless entity @e[tag=no_heart,distance=..1,sort=nearest,limit=1] run return 0
data modify storage wicked.heart heart.uuid set from entity @s Item.tag.uuid
execute as @e[tag=no_heart,distance=..1] run function wicked:heart_ripping/restore_heart with storage wicked.heart heart