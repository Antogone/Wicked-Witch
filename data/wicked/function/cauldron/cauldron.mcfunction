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
execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",count:1}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",count:1}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:diamond",count:4}}] if block ~ ~ ~ minecraft:water_cauldron if entity @a[tag=wicked,distance=..5] run function wicked:cauldron/protection/set_protection


## Execute the effect
execute as @e[tag=protection] at @s run function wicked:cauldron/protection/exec_protect



############ NO MORE MOBS
# Blaze Powder x4
# Nether wart x4
# Diamond x4
# Emerald x4
# Wither rose x1
execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",count:4}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",count:4}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:diamond",count:4}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:emerald",count:4}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:wither_rose",count:1}}] if block ~ ~ ~ minecraft:water_cauldron if entity @a[tag=wicked,distance=..5] run function wicked:cauldron/no_mobs/set_nomobs


## Execute the effect 
execute as @e[tag=no_mobs] at @s run function wicked:cauldron/no_mobs/exec_nomobs




############ MALEDICTION 
# Blaze Powder x2
# Nether Wart x10
# Ghast Tear x2
# Enchanted golden apple x2
# Wither rose x1
execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",count:2}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",count:10}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",count:2}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple",count:2}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:wither_rose",count:1}}] if block ~ ~ ~ minecraft:water_cauldron if entity @a[tag=wicked,distance=..5] run function wicked:cauldron/malefice/set_malefice


## Execute the effect
execute as @e[tag=malefice] at @s run function wicked:cauldron/malefice/exec_malefice





########## REMOVE THE SPELL

#Gunpowder
execute at @e[type=item,nbt={Item:{id:"minecraft:gunpowder",count:1}}] if entity @e[tag=c_spell,distance=..1] run tag @e[tag=c_spell,distance=..1] add remove
execute as @e[tag=remove] at @s run function wicked:cauldron/remove

#Destroy the cauldron
execute at @e[tag=c_spell] if block ~ ~ ~ air run kill @e[tag=c_spell14,sort=nearest]
execute at @e[tag=c_spell] if block ~ ~ ~ air run kill @e[tag=c_spell28,sort=nearest]
execute at @e[tag=c_spell] if block ~ ~ ~ air run kill @e[tag=c_spell,distance=..1,sort=nearest]





############ BANNER
# Emerald block x1
# Lime Banner x10
execute at @e[type=item,nbt={Item:{id:"minecraft:emerald_block",count:1}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:lime_banner",count:10}}] if block ~ ~ ~ minecraft:water_cauldron if entity @a[tag=wicked,distance=..5] run function wicked:cauldron/banner



########### CREATE FAMILIAR 
# Coal x2
# Blaze Powder x1
# Enchanted golden apple x1
# Egg x1
execute unless entity @e[tag=salem,limit=1] run execute at @e[type=item,nbt={Item:{id:"minecraft:coal",count:2}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",count:1}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple",count:1}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:egg",count:1}}] if block ~ ~ ~ minecraft:water_cauldron if entity @a[tag=wicked,distance=..5] run function wicked:cauldron/salem



########### ENCHANTED GOLDEN APPLE
# Golden Apple x1
# Spellbook x1
execute at @e[type=item,nbt={Item:{id:"minecraft:golden_apple",count:1}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:written_book",count:1,components:{"minecraft:custom_data":{spellbook:1b}}}}] if block ~ ~ ~ minecraft:water_cauldron if entity @a[tag=wicked,distance=..5] run function wicked:cauldron/enchanted_golden_apple


######## NETHER UPGRADE SILVER SLIPPERS
# Silver Slippers x1
# Nether Wart x4
# Netherrack x4
execute at @e[type=item,nbt={Item:{id:"minecraft:chainmail_boots",count:1,components:{"minecraft:custom_data":{silver:1b}}}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",count:4}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:netherrack",count:4}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/upgrade_nether


######## END UPGRADE SILVER SLIPPERS
# Silver Slippers x1 
# Ender Pearl x4
# End Stone x4
execute at @e[type=item,nbt={Item:{id:"minecraft:chainmail_boots",count:1,components:{"minecraft:custom_data":{silver:1b}}}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",count:4}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:end_stone",count:4}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/upgrade_end



######## Witch Beacon
execute at @e[type=item,nbt={Item:{id:"minecraft:sugar",count:15}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:redstone",count:15}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust",count:15}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/witch_beacon




schedule function wicked:cauldron/cauldron 20t
