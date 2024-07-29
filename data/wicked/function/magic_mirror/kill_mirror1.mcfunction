##
 # kill_mirror1.mcfunction
 # 
 #
 # Created by Antogone.
##

$data remove storage magic_mirror info.dim[$(index)]
$data remove storage magic_mirror info.x[$(index)]
$data remove storage magic_mirror info.y[$(index)]
$data remove storage magic_mirror info.z[$(index)]


# scoreboard players operation $mirror_exit index += $magic_mirror incre_deux
# scoreboard players operation $mirror_entry index += $magic_mirror incre_deux

clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={mirror_2:1b}] 1
tag @s remove mirror_1

execute at @s run kill @e[tag=store_dat,sort=nearest,distance=..1]
execute at @s run kill @e[tag=itm_disp,sort=nearest,distance=..1]
execute at @s run kill @e[tag=magic_mirror,sort=nearest,distance=..1]
return 1