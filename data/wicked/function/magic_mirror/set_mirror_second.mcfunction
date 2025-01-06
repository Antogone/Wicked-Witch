##
 # set_mirror.mcfunction
 # 
 #
 # Created by Antogone.
##

data modify storage magic_mirror info.dim append from entity @s Dimension
data modify storage magic_mirror info.x append from entity @s Pos[0]
data modify storage magic_mirror info.y append from entity @s Pos[1]
data modify storage magic_mirror info.z append from entity @s Pos[2]




execute at @s run summon interaction ~ ~0.5 ~ {width:1f, height: 1.2f, response: 1b, Tags: [magic_mirror],Passengers:[{id:"minecraft:marker",Tags:["store_dat","exit"]}]}

execute at @s run execute at @e[tag=magic_mirror,sort=nearest,limit=1] run summon item_display ~ ~0.5 ~ {Tags:["itm_disp"],billboard:"vertical",item_display:"fixed",item:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":{floats:[10140005]},"minecraft:item_model":"mirror"}}}



execute store result storage minecraft:magic_mirror magic_id int 1 run scoreboard players get $mirror_entry index
data modify entity @e[type=marker,tag=store_dat,sort=nearest,limit=1] data.index set from storage magic_mirror magic_id



scoreboard players operation $mirror_exit index += $magic_mirror incre_deux
scoreboard players operation $mirror_entry index += $magic_mirror incre_deux
scoreboard players set @s click 0

clear @s carrot_on_a_stick[custom_data={mirror_2:1b}] 1
tag @s remove mirror_1