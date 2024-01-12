##
 # set_house.mcfunction
 # 
 #
 # Created by .
##
tag @p[tag=no_house] add house
tag @p[tag=no_house] remove no_house


#data modify storage wicked.tep PosHouse set value [0d,0d,0d]


# execute as @a[tag=wicked,nbt={Dimension:"minecraft:overworld"}] at @e[tag=set_house,limit=1,type=slime] run tag @a[tag=wicked] add house_ow
# execute as @a[tag=wicked,nbt={Dimension:"minecraft:the_end"}] at @e[tag=set_house,limit=1,type=slime] run tag @a[tag=wicked] add house_end
# execute as @a[tag=wicked,nbt={Dimension:"minecraft:the_nether"}] at @e[tag=set_house,limit=1,type=slime] run tag @a[tag=wicked] add house_net


# execute store result storage wicked.tep PosHouse[0] double 1 run data get entity @e[tag=house_set,limit=1] Pos[0]
# execute store result storage wicked.tep PosHouse[1] double 1 run data get entity @e[tag=house_set,limit=1] Pos[1]
# execute store result storage wicked.tep PosHouse[2] double 1 run data get entity @e[tag=house_set,limit=1] Pos[2]

data modify storage wicked.tep house.dim set from entity @p[tag=wicked] Dimension
data modify storage wicked.tep house.x set from entity @p[tag=wicked] Pos[0]
data modify storage wicked.tep house.y set from entity @p[tag=wicked] Pos[1]
data modify storage wicked.tep house.z set from entity @p[tag=wicked] Pos[2]

clear @p[tag=wicked] carrot_on_a_stick{house:1b} 1
scoreboard players set @p[tag=wicked] click 0


tellraw @s ["",{"text":"House correctly saved","color":"green"},{"text":" "}]