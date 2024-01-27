##
 # clear_mirror.mcfunction
 # 
 #
 # Created by Antogone.
##

execute unless data entity @s interaction run return 0
execute on target unless predicate wicked:select_redstone run return 0
execute on target run tag @s add Interactor

execute as @p[tag=Interactor] at @s run execute store result score $index_click index run data get entity @e[type=minecraft:marker,tag=store_dat,sort=nearest,limit=1] data.index
execute as @p[tag=Interactor,tag=mirror_1] if score $index_click index = $mirror_exit index if predicate wicked:select_redstone run function wicked:magic_mirror/kill_mirror1 with storage magic_mirror temp


execute at @s run kill @e[tag=store_dat,sort=nearest,distance=..1]
execute at @s run kill @e[tag=itm_disp,sort=nearest,distance=..1]
execute at @s run kill @e[tag=magic_mirror,sort=nearest,distance=..1]

