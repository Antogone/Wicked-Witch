##
 # get_index.mcfunction
 # 
 #
 # Created by Antogone.
##
execute store result storage magic_mirror temp.index int 1 run data get entity @s data.index

function wicked:magic_mirror/get_info with storage magic_mirror temp

