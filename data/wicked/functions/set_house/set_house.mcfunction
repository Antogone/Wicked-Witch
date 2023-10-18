##
 # set_house.mcfunction
 # 
 #
 # Created by .
##
tag @p[tag=no_house] add house
tag @p[tag=no_house] remove no_house

tag @p[tag=house_ow] remove house_ow
tag @p[tag=house_net] remove house_net
tag @p[tag=house_end] remove house_end

data modify storage wicked.tep Temp.PosHouse set value [0d,0d,0d]

execute as @a[tag=wicked] at @e[tag=set_house,limit=1,type=slime] run summon marker ~ ~ ~ {Tags:["house_set"],PersistenceRequired:1b}

execute as @a[tag=wicked,nbt={Dimension:"minecraft:overworld"}] at @e[tag=set_house,limit=1,type=slime] run tag @a[tag=wicked] add house_ow
execute as @a[tag=wicked,nbt={Dimension:"minecraft:the_end"}] at @e[tag=set_house,limit=1,type=slime] run tag @a[tag=wicked] add house_end
execute as @a[tag=wicked,nbt={Dimension:"minecraft:the_nether"}] at @e[tag=set_house,limit=1,type=slime] run tag @a[tag=wicked] add house_net


execute store result storage wicked.tep Temp.PosHouse[0] double 1 run data get entity @e[tag=house_set,limit=1] Pos[0]
execute store result storage wicked.tep Temp.PosHouse[1] double 1 run data get entity @e[tag=house_set,limit=1] Pos[1]
execute store result storage wicked.tep Temp.PosHouse[2] double 1 run data get entity @e[tag=house_set,limit=1] Pos[2]



kill @e[tag=set_house,type=slime]
execute at @s run kill @e[type=item,distance=..3]
execute at @s run kill @e[type=marker,distance=..3]