##
 # cauldron.mcfunction
 # 
 #
 # Created by Antogone
##

############ PROTECTION 
# Blaze Powder x1
# Nether wart x1
# Diamond x4
execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron if entity @a[tag=wicked,distance=..5] run function wicked:cauldron/set_protection



## Small
execute as @e[tag=protection,tag=!large] at @s run execute as @e[tag=wicked,dx=14,dz=14,dy=15] run function wicked:cauldron/effect_protect
execute as @e[tag=protection,tag=!large] at @s run execute as @e[tag=wicked,dx=-14,dz=14,dy=15] run function wicked:cauldron/effect_protect
execute as @e[tag=protection,tag=!large] at @s run execute as @e[tag=wicked,dx=-14,dz=-14,dy=15] run function wicked:cauldron/effect_protect 
execute as @e[tag=protection,tag=!large] at @s run execute as @e[tag=wicked,dx=14,dz=-14,dy=15] run function wicked:cauldron/effect_protect

execute as @e[tag=protection,tag=!large] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=14,dz=14,dy=15] run function wicked:cauldron/effect_protect
execute as @e[tag=protection,tag=!large] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-14,dz=14,dy=15] run function wicked:cauldron/effect_protect
execute as @e[tag=protection,tag=!large] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-14,dz=-14,dy=15] run function wicked:cauldron/effect_protect 
execute as @e[tag=protection,tag=!large] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=14,dz=-14,dy=15] run function wicked:cauldron/effect_protect


## Large 
execute as @e[tag=protection,tag=large] at @s run execute as @e[tag=wicked,dx=27,dz=27,dy=28] run function wicked:cauldron/effect_protect
execute as @e[tag=protection,tag=large] at @s run execute as @e[tag=wicked,dx=-27,dz=27,dy=28] run function wicked:cauldron/effect_protect
execute as @e[tag=protection,tag=large] at @s run execute as @e[tag=wicked,dx=-27,dz=-27,dy=28] run function wicked:cauldron/effect_protect 
execute as @e[tag=protection,tag=large] at @s run execute as @e[tag=wicked,dx=27,dz=-27,dy=28] run function wicked:cauldron/effect_protect

execute as @e[tag=protection,tag=large] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=27,dz=27,dy=28] run function wicked:cauldron/effect_protect
execute as @e[tag=protection,tag=large] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-27,dz=27,dy=28] run function wicked:cauldron/effect_protect
execute as @e[tag=protection,tag=large] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-27,dz=-27,dy=28] run function wicked:cauldron/effect_protect 
execute as @e[tag=protection,tag=large] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=27,dz=-27,dy=28] run function wicked:cauldron/effect_protect




############ NO MORE MOBS
# Blaze Powder x4
# Nether wart x4
# Diamond x4
# Emerald x4
# Wither rose x1
execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:wither_rose",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron if entity @a[tag=wicked,distance=..5] run function wicked:cauldron/set_nomobs

## Small
execute as @e[tag=no_mobs,tag=!large] at @s run kill @e[type=#minecraft:hostile,dx=14,dz=14,dy=15]
execute as @e[tag=no_mobs,tag=!large] at @s run kill @e[type=#minecraft:hostile,dx=-14,dz=14,dy=15]
execute as @e[tag=no_mobs,tag=!large] at @s run kill @e[type=#minecraft:hostile,dx=-14,dz=-14,dy=15]
execute as @e[tag=no_mobs,tag=!large] at @s run kill @e[type=#minecraft:hostile,dx=14,dz=-14,dy=15]


## Large
execute as @e[tag=no_mobs,tag=large] at @s run kill @e[type=#minecraft:hostile,dx=27,dz=27,dy=28]
execute as @e[tag=no_mobs,tag=large] at @s run kill @e[type=#minecraft:hostile,dx=-27,dz=27,dy=28]
execute as @e[tag=no_mobs,tag=large] at @s run kill @e[type=#minecraft:hostile,dx=-27,dz=-27,dy=28]
execute as @e[tag=no_mobs,tag=large] at @s run kill @e[type=#minecraft:hostile,dx=27,dz=-27,dy=28]





############ MALEDICTION 
# Blaze Powder x2
# Nether Wart x10
# Ghast Tear x2
# Enchanted golden apple x2
# Wither rose x1
execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:2b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:10b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:2b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple",Count:2b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:wither_rose",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron if entity @a[tag=wicked,distance=..5] run function wicked:cauldron/set_malefice

## Small
execute as @e[tag=malefice,tag=!large] at @s run execute as @e[tag=!wicked,tag=!salem,type=!#minecraft:dontharm,dx=14,dz=14,dy=14] run function wicked:cauldron/effect_malefice
execute as @e[tag=malefice,tag=!large] at @s run execute as @e[tag=!wicked,tag=!salem,type=!#minecraft:dontharm,dx=-14,dz=14,dy=14] run function wicked:cauldron/effect_malefice
execute as @e[tag=malefice,tag=!large] at @s run execute as @e[tag=!wicked,tag=!salem,type=!#minecraft:dontharm,dx=-14,dz=-14,dy=14] run function wicked:cauldron/effect_malefice
execute as @e[tag=malefice,tag=!large] at @s run execute as @e[tag=!wicked,tag=!salem,type=!#minecraft:dontharm,dx=14,dz=-14,dy=14] run function wicked:cauldron/effect_malefice

## Large
execute as @e[tag=malefice,tag=large] at @s run execute as @e[tag=!wicked,tag=!salem,type=!#minecraft:dontharm,dx=27,dz=27,dy=28] run function wicked:cauldron/effect_malefice
execute as @e[tag=malefice,tag=large] at @s run execute as @e[tag=!wicked,tag=!salem,type=!#minecraft:dontharm,dx=-27,dz=27,dy=28] run function wicked:cauldron/effect_malefice
execute as @e[tag=malefice,tag=large] at @s run execute as @e[tag=!wicked,tag=!salem,type=!#minecraft:dontharm,dx=-27,dz=-27,dy=28] run function wicked:cauldron/effect_malefice
execute as @e[tag=malefice,tag=large] at @s run execute as @e[tag=!wicked,tag=!salem,type=!#minecraft:dontharm,dx=27,dz=-27,dy=28] run function wicked:cauldron/effect_malefice





########## REMOVE THE SPELL
execute at @e[type=item,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] if entity @e[tag=c_spell,distance=..1] run tag @e[tag=c_spell,distance=..1] add remove
execute as @e[tag=remove] at @e[tag=remove] run kill @e[type=item,distance=..1]

execute as @e[tag=remove] at @e[tag=remove] run kill @e[tag=c_spell14,sort=nearest]
execute as @e[tag=remove] at @e[tag=remove] run kill @e[tag=c_spell28,sort=nearest]

execute as @e[tag=remove] at @e[tag=remove] run kill @e[tag=remove]

execute at @e[tag=c_spell] if block ~ ~ ~ air run kill @e[tag=c_spell14,sort=nearest]
execute at @e[tag=c_spell] if block ~ ~ ~ air run kill @e[tag=c_spell28,sort=nearest]
execute at @e[tag=c_spell] if block ~ ~ ~ air run kill @e[tag=c_spell,distance=..1,sort=nearest]





############ BANNER
# Emerald block x1
# Lime Banner x10
execute at @e[type=item,nbt={Item:{id:"minecraft:emerald_block",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:lime_banner",Count:10b}}] if block ~ ~ ~ minecraft:water_cauldron if entity @a[tag=wicked,distance=..5] run function wicked:cauldron/banner




########### CREATE FAMILIAR 
# Coal x2
# Blaze Powder x1
# Enchanted golden apple x1
# Egg x1
execute unless entity @e[tag=salem,limit=1] run execute at @e[type=item,nbt={Item:{id:"minecraft:coal",Count:2b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:egg",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron if entity @a[tag=wicked,distance=..5] run function wicked:cauldron/salem




########### ENCHANTED GOLDEN APPLE
# Golden Apple x1
# Spellbook x1
execute at @e[type=item,nbt={Item:{id:"minecraft:golden_apple",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:written_book",Count:1b,tag:{spellbook:1b}}}] if block ~ ~ ~ minecraft:water_cauldron if entity @a[tag=wicked,distance=..5] run function wicked:cauldron/enchanted_golden_apple


######## NETHER UPGRADE SILVER SLIPPERS
# Silver Slippers x1
# Nether Wart x4
# Netherrack x4
execute at @e[type=item,nbt={Item:{id:"minecraft:chainmail_boots",Count:1b,tag:{silver:1b}}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:netherrack",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/upgrade_nether


######## END UPGRADE SILVER SLIPPERS
# Silver Slippers x1 
# Ender Pearl x4
# End Stone x4
execute at @e[type=item,nbt={Item:{id:"minecraft:chainmail_boots",Count:1b,tag:{silver:1b}}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:end_stone",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/upgrade_end




######## Witch Beacon
execute at @e[type=item,nbt={Item:{id:"minecraft:sugar",Count:15b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:15b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust",Count:15b}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/witch_beacon





## Magic mirror verrouillage
execute at @e[type=item,nbt={Item:{tag:{pendant:1b}}}] if entity @e[type=minecraft:interaction,tag=magic_mirror,distance=..2,sort=nearest] run tag @e[type=minecraft:interaction,tag=magic_mirror,distance=..2,sort=nearest] add locked



schedule function wicked:cauldron/cauldron 10t
