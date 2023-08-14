##
 # set_house.mcfunction
 # 
 #
 # Created by .
##
tag @p[tag=no_house] add house
tag @p[tag=no_house] remove no_house
kill @e[type=marker,tag=house_ow]
kill @e[type=marker,tag=house_end]
kill @e[type=marker,tag=house_net]

tag @p[tag=house_ow] remove house_ow
tag @p[tag=house_net] remove house_net
tag @p[tag=house_end] remove house_end
execute as @a[tag=wicked,nbt={Dimension:"minecraft:overworld"}] at @e[tag=set_house,limit=1,type=slime] run summon marker ~ ~ ~ {Tags:["house_ow"],PersistenceRequired:1b}
execute as @a[tag=wicked,nbt={Dimension:"minecraft:overworld"}] at @e[tag=set_house,limit=1,type=slime] run tag @a[tag=wicked] add house_ow

execute as @a[tag=wicked,nbt={Dimension:"minecraft:the_end"}] at @e[tag=set_house,limit=1,type=slime] run summon marker ~ ~ ~ {Tags:["house_end"],PersistenceRequired:1b}
execute as @a[tag=wicked,nbt={Dimension:"minecraft:the_end"}] at @e[tag=set_house,limit=1,type=slime] run tag @a[tag=wicked] add house_end

execute as @a[tag=wicked,nbt={Dimension:"minecraft:the_nether"}] at @e[tag=set_house,limit=1,type=slime] run summon marker ~ ~ ~ {Tags:["house_net"],PersistenceRequired:1b}
execute as @a[tag=wicked,nbt={Dimension:"minecraft:the_nether"}] at @e[tag=set_house,limit=1,type=slime] run tag @a[tag=wicked] add house_net
execute at @e[tag=set_house,limit=1,type=slime] run forceload remove all
execute at @e[tag=set_house,limit=1,type=slime] run forceload add ~ ~ ~ ~
kill @e[tag=set_house,type=slime]
execute at @s run kill @e[type=item,distance=..3]