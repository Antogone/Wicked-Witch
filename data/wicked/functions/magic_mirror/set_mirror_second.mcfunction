##
 # set_mirror.mcfunction
 # 
 #
 # Created by Antogone.
##
# execute at @s run setblock ~ ~ ~ gray_banner{Patterns: [{Pattern: "gru", Color: 3}, {Pattern: "bo", Color: 4}, {Pattern: "tts", Color: 4}, {Pattern: "bts", Color: 4}, {Pattern: "cbo", Color: 4}]}

data modify storage magic_mirror info.dim append from entity @p[tag=wicked] Dimension
data modify storage magic_mirror info.x append from entity @p[tag=wicked] Pos[0]
data modify storage magic_mirror info.y append from entity @p[tag=wicked] Pos[1]
data modify storage magic_mirror info.z append from entity @p[tag=wicked] Pos[2]

summon interaction ~ ~1 ~ {width:1f, height: 1f, response: 1b, Tags: [magic_mirror],Passengers:[{id:"minecraft:marker",Tags:["store_dat","exit"]}]}
summon item_display ~ ~1.5 ~ {Tags:["itm_disp"],billboard:"vertical",transformation:{scale:[2f,2f,2f],translation:[0f,4f,0f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:10140005}}}



execute store result storage minecraft:magic_mirror magic_id int 1 run scoreboard players get $mirror_entry index
data modify entity @e[type=marker,tag=store_dat,sort=nearest,limit=1] data.index set from storage magic_mirror magic_id



scoreboard players operation $mirror_exit index += $magic_mirror incre_deux
scoreboard players operation $mirror_entry index += $magic_mirror incre_deux

clear @s carrot_on_a_stick{mirror_2:1b} 1
tag @s remove mirror_1