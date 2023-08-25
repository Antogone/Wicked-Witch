##
 # cauldron.mcfunction
 # 
 #
 # Created by Bomerie
##

############ PROTECTION 
execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run function cauldron/set_protection


execute as @e[tag=protection] at @s run execute as @e[tag=wicked,dx=14,dz=14,dy=15] run function effectprotect
execute as @e[tag=protection] at @s run execute as @e[tag=wicked,dx=-14,dz=14,dy=15] run function effectprotect
execute as @e[tag=protection] at @s run execute as @e[tag=wicked,dx=-14,dz=-14,dy=15] run function effectprotect 
execute as @e[tag=protection] at @s run execute as @e[tag=wicked,dx=14,dz=-14,dy=15] run function effectprotect

execute as @e[tag=protection] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=14,dz=14,dy=15] run function effectprotect
execute as @e[tag=protection] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-14,dz=14,dy=15] run function effectprotect
execute as @e[tag=protection] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-14,dz=-14,dy=15] run function effectprotect 
execute as @e[tag=protection] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=14,dz=-14,dy=15] run function effectprotect

############  
# execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run function cauldron/set_protection

# execute as @e[tag=protection] at @s run effect give @e[tag=wicked,distance=..14] resistance 10 255 true




############ NO MORE MOBS
execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:wither_rose",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run function cauldron/set_nomobs


execute as @e[tag=no_mobs] at @s run kill @e[type=#minecraft:hostile,dx=14,dz=14,dy=15]
execute as @e[tag=no_mobs] at @s run kill @e[type=#minecraft:hostile,dx=-14,dz=14,dy=15]
execute as @e[tag=no_mobs] at @s run kill @e[type=#minecraft:hostile,dx=-14,dz=-14,dy=15]
execute as @e[tag=no_mobs] at @s run kill @e[type=#minecraft:hostile,dx=14,dz=-14,dy=15]




############ MALEDICTION 
execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:2b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:10b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:2b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple",Count:2b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:wither_rose",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run function cauldron/set_malefice

execute as @e[tag=malefice] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=14,dz=14,dy=14] run function effectmalefice
execute as @e[tag=malefice] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-14,dz=14,dy=14] run function effectmalefice
execute as @e[tag=malefice] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-14,dz=-14,dy=14] run function effectmalefice
execute as @e[tag=malefice] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=14,dz=-14,dy=14] run function effectmalefice




########## PARTICLE 

execute if entity @e[tag=c_spell] as @e[tag=c_spell] at @s positioned ~ ~14 ~ run function cauldron/alchemymod_2
execute if entity @e[tag=c_spell] as @e[tag=c_spell] at @s positioned ~ ~7 ~ run function cauldron/alchemymod_2
execute if entity @e[tag=c_spell] as @e[tag=c_spell] at @s anchored eyes run function cauldron/alchemymod_2

execute as @e[tag=c_spell] at @s run teleport @s ~ ~ ~ ~0.245 ~



########## REMOVE THE SPELL
execute at @e[type=item,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] if entity @e[tag=c_spell,distance=..1] run tag @e[tag=c_spell,distance=..1] add remove
execute as @e[tag=remove] at @e[tag=remove] run kill @e[type=item,distance=..1]
execute as @e[tag=remove] at @e[tag=remove] run kill @e[tag=remove]

execute at @e[tag=c_spell] as @e[tag=c_spell] if block ~ ~ ~ air run kill @e[tag=c_spell,distance=..1,sort=nearest]


############ BANNER
execute at @e[type=item,nbt={Item:{id:"minecraft:emerald_block",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:lime_banner",Count:10b}}] if block ~ ~ ~ minecraft:water_cauldron run function cauldron/banner


############ AMPLIFICATOR
execute at @e[type=item,nbt={Item:{id:"minecraft:emerald_block",Count:2b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:beacon",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:egg",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run function cauldron/amplificator



########### CREATE FAMILIAR 
execute unless entity @e[tag=salem,limit=1] run execute at @e[type=item,nbt={Item:{id:"minecraft:coal",Count:2b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:egg",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run function cauldron/salem


########### Enchanted golden apple
execute at @e[type=item,nbt={Item:{id:"minecraft:golden_apple",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:written_book",Count:1b,tag:{title:"§2The Grimmerie"}}}] if block ~ ~ ~ minecraft:water_cauldron run function cauldron/enchanted_golden_apple
