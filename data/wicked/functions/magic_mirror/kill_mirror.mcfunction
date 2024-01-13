##
 # clear_mirror.mcfunction
 # 
 #
 # Created by Antogone.
##

execute unless data entity @s interaction run return 0
execute on target unless predicate wicked:select_redstone run return 0


execute as @p[tag=mirror_1] if predicate wicked:select_redstone run function wicked:magic_mirror/kill_mirror1 with storage magic_mirror temp



kill @e[tag=magic_mirror,sort=nearest,limit=1]
kill @e[tag=store_dat,sort=nearest,limit=1]
kill @e[tag=itm_disp,sort=nearest,limit=1]

