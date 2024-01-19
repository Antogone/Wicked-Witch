##
 # cauldron.mcfunction
 # 
 #
 # Created by Antogone
##

############ PROTECTION 
execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/set_protection


execute as @e[tag=protection] at @s run execute as @e[tag=wicked,dx=14,dz=14,dy=15] run function wicked:cauldron/effect_protect
execute as @e[tag=protection] at @s run execute as @e[tag=wicked,dx=-14,dz=14,dy=15] run function wicked:cauldron/effect_protect
execute as @e[tag=protection] at @s run execute as @e[tag=wicked,dx=-14,dz=-14,dy=15] run function wicked:cauldron/effect_protect 
execute as @e[tag=protection] at @s run execute as @e[tag=wicked,dx=14,dz=-14,dy=15] run function wicked:cauldron/effect_protect

execute as @e[tag=protection] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=14,dz=14,dy=15] run function wicked:cauldron/effect_protect
execute as @e[tag=protection] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-14,dz=14,dy=15] run function wicked:cauldron/effect_protect
execute as @e[tag=protection] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-14,dz=-14,dy=15] run function wicked:cauldron/effect_protect 
execute as @e[tag=protection] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=14,dz=-14,dy=15] run function wicked:cauldron/effect_protect



############ NO MORE MOBS
execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:wither_rose",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/set_nomobs


execute as @e[tag=no_mobs] at @s run kill @e[type=#minecraft:hostile,dx=14,dz=14,dy=15]
execute as @e[tag=no_mobs] at @s run kill @e[type=#minecraft:hostile,dx=-14,dz=14,dy=15]
execute as @e[tag=no_mobs] at @s run kill @e[type=#minecraft:hostile,dx=-14,dz=-14,dy=15]
execute as @e[tag=no_mobs] at @s run kill @e[type=#minecraft:hostile,dx=14,dz=-14,dy=15]




############ MALEDICTION 
execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:2b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:10b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:2b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple",Count:2b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:wither_rose",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/set_malefice

execute as @e[tag=malefice] at @s run execute as @e[tag=!wicked,tag=!salem,type=!#minecraft:dontharm,dx=14,dz=14,dy=14] run function wicked:cauldron/effect_malefice
execute as @e[tag=malefice] at @s run execute as @e[tag=!wicked,tag=!salem,type=!#minecraft:dontharm,dx=-14,dz=14,dy=14] run function wicked:cauldron/effect_malefice
execute as @e[tag=malefice] at @s run execute as @e[tag=!wicked,tag=!salem,type=!#minecraft:dontharm,dx=-14,dz=-14,dy=14] run function wicked:cauldron/effect_malefice
execute as @e[tag=malefice] at @s run execute as @e[tag=!wicked,tag=!salem,type=!#minecraft:dontharm,dx=14,dz=-14,dy=14] run function wicked:cauldron/effect_malefice








########## PARTICLE 

execute as @e[tag=c_spell14] at @s positioned ~ ~ ~ run function wicked:cauldron/particle/alchemymod_2
execute as @e[tag=c_spell] at @s anchored eyes run function wicked:cauldron/particle/alchemymod_2








########## REMOVE THE SPELL
execute at @e[type=item,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] if entity @e[tag=c_spell,distance=..1] run tag @e[tag=c_spell,distance=..1] add remove
execute as @e[tag=remove] at @e[tag=remove] run kill @e[type=item,distance=..1]
execute as @e[tag=remove] at @e[tag=remove] run kill @e[tag=remove]

execute at @e[tag=c_spell] if block ~ ~ ~ air run kill @e[tag=c_spell14,sort=nearest]
execute at @e[tag=c_spell] if block ~ ~ ~ air run kill @e[tag=c_spell,distance=..1,sort=nearest]





############ BANNER
execute at @e[type=item,nbt={Item:{id:"minecraft:emerald_block",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:lime_banner",Count:10b}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/banner





########### CREATE FAMILIAR 
execute unless entity @e[tag=salem,limit=1] run execute at @e[type=item,nbt={Item:{id:"minecraft:coal",Count:2b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:egg",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/salem


########### ENCHANTED GOLDEN APPLE
execute at @e[type=item,nbt={Item:{id:"minecraft:golden_apple",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:written_book",Count:1b,tag:{grimmerie:1b}}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/enchanted_golden_apple


######## NETHER UPGRADE SILVER SLIPPERS
execute at @e[type=item,nbt={Item:{id:"minecraft:chainmail_boots",Count:1b,tag:{silver:1b}}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:netherrack",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/upgrade_nether


######## END UPGRADE SILVER SLIPPERS
execute at @e[type=item,nbt={Item:{id:"minecraft:chainmail_boots",Count:1b,tag:{silver:1b}}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:end_stone",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/upgrade_end



schedule function wicked:cauldron/cauldron 10t


execute at @e[type=item,nbt={Item:{tag:{pendant:1b}}}] if entity @e[type=minecraft:interaction,tag=magic_mirror,distance=..2,sort=nearest] run tag @e[type=minecraft:interaction,tag=magic_mirror,distance=..2,sort=nearest] add locked