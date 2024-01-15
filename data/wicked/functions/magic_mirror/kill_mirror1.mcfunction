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

clear @s carrot_on_a_stick{mirror_2:1b} 1
tag @s remove mirror_1