##
 # cauldron.mcfunction
 # 
 #
 # Created by Bomerie
##

############ PROTECTION 
execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run function cauldron/set_protection

execute as @e[tag=protection] at @s run effect give @e[tag=wicked,distance=..14] resistance 10 255 true
execute as @e[tag=protection] at @s run effect give @e[tag=wicked,distance=..14] fire_resistance 10 255 true
execute as @e[tag=protection] at @s run effect give @e[tag=wicked,distance=..14] slow_falling 10 255 true

execute as @e[tag=protection] at @s run effect give @e[tag=!wicked,type=!#minecraft:dontharm,distance=..14] slowness 10 1 true
execute as @e[tag=protection] at @s run effect give @e[tag=!wicked,type=!#minecraft:dontharm,distance=..14] mining_fatigue 10 255 true
execute as @e[tag=protection] at @s run effect give @e[tag=!wicked,type=!#minecraft:dontharm,distance=..14] glowing 10 255 true
execute as @e[tag=protection] at @s run effect give @e[tag=!wicked,type=!#minecraft:dontharm,distance=..14] weakness 10 1 true


############  
# execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run function cauldron/set_protection

# execute as @e[tag=protection] at @s run effect give @e[tag=wicked,distance=..14] resistance 10 255 true




############ NO MORE MOBS
execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:wither_rose",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run function cauldron/set_nomobs

execute as @e[tag=no_mobs] at @s run kill @e[type=#minecraft:hostile,distance=..14]


############ MALEDICTION 
execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:2b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:10b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:2b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:golden_apple",Count:2b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:wither_rose",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run function cauldron/set_malefice

execute as @e[tag=malefice] at @s run effect give @e[tag=!wicked,type=!#minecraft:dontharm,distance=..14] wither 10 1 true
execute as @e[tag=malefice] at @s run effect give @e[tag=!wicked,type=!#minecraft:dontharm,distance=..14] darkness 15 4 true
execute as @e[tag=malefice] at @s run effect give @e[tag=!wicked,type=!#minecraft:dontharm,distance=..14] mining_fatigue 60 2 true
execute as @e[tag=malefice] at @s run effect give @e[tag=!wicked,type=!#minecraft:dontharm,distance=..14] bad_omen infinite 1 true
execute as @e[tag=malefice] at @s run effect give @e[tag=!wicked,type=!#minecraft:dontharm,distance=..14] hunger 15 2 true
execute as @e[tag=malefice] at @s run effect give @e[tag=!wicked,type=!#minecraft:dontharm,distance=..14] nausea 15 1 true
execute as @e[tag=malefice] at @s run effect give @e[tag=!wicked,type=!#minecraft:dontharm,distance=..14] slowness 60 4 true
execute as @e[tag=malefice] at @s run effect give @e[tag=!wicked,type=!#minecraft:dontharm,distance=..14] unluck 60 1 true


########## PARTICLE 

execute if entity @e[tag=c_spell] as @e[tag=c_spell] at @s positioned ~ ~10 ~ run function cauldron/alchemymod_2
execute if entity @e[tag=c_spell] as @e[tag=c_spell] at @s positioned ~ ~5 ~ run function cauldron/alchemymod_2
execute if entity @e[tag=c_spell] as @e[tag=c_spell] at @s anchored eyes run function cauldron/alchemymod_2

execute as @e[tag=c_spell] at @s run teleport @s ~ ~ ~ ~0.245 ~



########## REMOVE THE SPELL
execute at @e[type=item,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] if entity @e[tag=c_spell,distance=..1] run tag @e[tag=c_spell,distance=..1] add remove
execute as @e[tag=remove] at @e[tag=remove] run kill @e[type=item,distance=..1]
execute as @e[tag=remove] at @e[tag=remove] run kill @e[tag=remove]

execute at @e[tag=c_spell] as @e[tag=c_spell] if block ~ ~ ~ air run kill @e[tag=c_spell,distance=..1,sort=nearest]



# ########## SET CAULDRON
# execute at @e[tag=set_cauldron] run setblock ~ ~ ~ cauldron
# execute at @e[tag=set_cauldron] run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["cauldron"]}
# execute as @e[tag=set_cauldron,type=slime] at @s run summon marker ~ ~ ~ {Invisible:1b,Tags:["remove_itm"]}
# execute as @e[tag=remove_itm] at @s run kill @e[tag=set_cauldron,distance=..2]
# execute as @e[tag=remove_itm] at @s run kill @e[type=item,distance=..2]
# execute as @e[tag=remove_itm] at @s run kill @e[tag=remove_itm,distance=..2]

# ########## RECUP CAULDRON 
# execute at @e[tag=cauldron] as @e[tag=cauldron] if block ~ ~ ~ air run summon item ~ ~ ~ {Item:{id:"minecraft:slime_spawn_egg",Count:1b,tag:{display:{Name:"{\"text\":\"§2Witch Cauldron\"}"},EntityTag:{Size:0,wasOnGround:1,NoAI:1,Silent:1,Tags:["set_cauldron"]},Enchantments:[{}]}}}
# execute at @e[tag=cauldron] as @e[tag=cauldron] if block ~ ~ ~ air run kill @e[tag=cauldron]

