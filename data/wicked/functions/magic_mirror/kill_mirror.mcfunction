##
 # clear_mirror.mcfunction
 # 
 #
 # Created by Antogone.
##

execute unless data entity @s interaction run return 0
execute on target unless predicate wicked:select_redstone run return 0


execute as @p[tag=mirror_1] if predicate wicked:select_redstone run function wicked:magic_mirror/kill_mirror1 with storage magic_mirror temp

execute at @s run kill @e[tag=store_dat,sort=nearest,distance=..1]
execute at @s run kill @e[tag=itm_disp,sort=nearest,distance=..1]
execute at @s run kill @e[tag=magic_mirror,sort=nearest,distance=..1]


