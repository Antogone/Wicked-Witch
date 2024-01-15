##
 # clear_mirror.mcfunction
 # 
 #
 # Created by Antogone.
##
scoreboard players set $mirror_entry index 0
scoreboard players set $mirror_exit index 1
scoreboard players set $index_click index 0

data remove storage magic_mirror magic_id
data remove storage magic_mirror info
data remove storage magic_mirror temp

kill @e[tag=magic_mirror]
kill @e[tag=store_dat]
kill @e[tag=itm_disp]