##
 # clear_mirror.mcfunction
 # 
 #
 # Created by Antogone.
##
execute unless data entity @s interaction run return 0
execute on target unless predicate wicked:select_redstone run return 0


kill @e[tag=magic_mirror,sort=nearest,limit=1]
kill @e[tag=store_dat,sort=nearest,limit=1]
kill @e[tag=itm_disp,sort=nearest,limit=1]