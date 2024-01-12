##
 # set_mirror.mcfunction
 # 
 #
 # Created by Antogone.
##

data modify storage magic_mirror info.dim append from entity @p[tag=wicked] Dimension
data modify storage magic_mirror info.x append from entity @p[tag=wicked] Pos[0]
data modify storage magic_mirror info.y append from entity @p[tag=wicked] Pos[1]
data modify storage magic_mirror info.z append from entity @p[tag=wicked] Pos[2]

summon interaction ~ ~ ~ {width:1f, height: 1.5f, response: 1b, Tags: [magic_mirror],Passengers:[{id:"minecraft:marker",Tags:["store_dat"]}]}


execute store result storage minecraft:magic_mirror magic_id int 1 run scoreboard players get $magic_mirror index_actu
data modify entity @e[type=marker,tag=store_dat,sort=nearest,limit=1] data.index set from storage magic_mirror magic_id



# execute store result score $magic_mirror magic_id run execute as @e[type=interaction,tag=magic_mirror] at @s on passengers run data get entity @s data.magic_id






# data modify storage magic_mirror magic_id set value $(index)


scoreboard players operation $magic_mirror index_futur += $magic_mirror incre_one
scoreboard players operation $magic_mirror index_actu += $magic_mirror incre_deux
