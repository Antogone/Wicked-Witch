##
 # get_info.mcfunction
 # 
 #
 # Created by Antogone.
##
$data modify storage magic_mirror temp.dim set from storage magic_mirror info.dim[$(index)]
$data modify storage magic_mirror temp.x set from storage magic_mirror info.x[$(index)]
$data modify storage magic_mirror temp.y set from storage magic_mirror info.y[$(index)]
$data modify storage magic_mirror temp.z set from storage magic_mirror info.z[$(index)]

