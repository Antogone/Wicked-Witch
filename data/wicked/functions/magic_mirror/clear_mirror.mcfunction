##
 # clear_mirror.mcfunction
 # 
 #
 # Created by Antogone.
##

scoreboard players set $magic_mirror index_actu 0
scoreboard players set $magic_mirror index_futur 0

data remove storage magic_mirror magic_id
data remove storage magic_mirror info
data remove storage magic_mirror temp

kill @e[tag=magic_mirror]
kill @e[tag=store_dat]