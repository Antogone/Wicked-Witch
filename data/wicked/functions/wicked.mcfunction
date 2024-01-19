###########################
#WICKED WITCH 
#by Antogone
#Versions 2023
###########################


###########################
# BONUS 
###########################
effect give @a[tag=wicked,limit=1] saturation infinite 0 true
effect give @a[tag=wicked,limit=1] jump_boost infinite 1 true
effect give @a[tag=wicked,limit=1,scores={broo=1..}] jump_boost 5 2 true

effect give @e[tag=salem,limit=1] slow_falling infinite 0 true


###########################
# AFFICHAGE MAGIE + RECHARGE
###########################
# AFFICHAGE
execute as @a[tag=wicked,limit=1] run title @s actionbar ["",{"text":"Energie Magique :","color":"dark_green"},{"text":" ","color":"#00CE00"},{"score":{"name":"@a[tag=wicked,limit=1]","objective":"magie"},"color":"#00CE00"}]


########################
# MODE MAGIE ACTIF
###########################


execute as @a[tag=wicked,limit=1,scores={select=1},nbt=!{Inventory:[{Slot:-106b,tag:{pendant:1b}}]}] run function wicked:item_storage/normal
execute as @a[tag=wicked,limit=1,scores={select=0},nbt={Inventory:[{Slot:-106b,tag:{pendant:1b}}]}] run function wicked:item_storage/don

execute as @a[tag=wicked,limit=1,nbt={Inventory:[{Slot:-106b,tag:{pendant:1b}}]}] run scoreboard players set @s select 1
execute as @a[tag=wicked,limit=1,nbt=!{Inventory:[{Slot:-106b,tag:{pendant:1b}}]}] run scoreboard players set @s select 0



###########################
# RECUPERATUON DES SORTS
###########################

#0. SCEPTER
#1. FIREBALL
#2. POOFING 
#3. IMMOBILIZATION 
#4. FLYING 
#5. BROMM



#SCEPTER
item replace entity @a[tag=wicked,limit=1,scores={select=1,magie=10..}] hotbar.0 with carrot_on_a_stick{scepter:1b,HideFlags:3,CustomModelData:10140002,Unbreakable:1,display:{Name:"{\"text\":\"§2Wicked Beam\"}",Lore:["{\"text\":\"§2Magic Cost : 10\"}"]},Enchantments:[{}]}

#POOFING
item replace entity @a[tag=l20,tag=wicked,limit=1,scores={select=1,magie=10..}] hotbar.1 with carrot_on_a_stick{poofing:1b,HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§2Poofing\"}",Lore:["{\"text\":\"§2Magic Cost : 10\"}"]},Enchantments:[{}]}

#IMMOBILIZATION
item replace entity @a[tag=l30,tag=wicked,limit=1,scores={select=1,magie=15..}] hotbar.2 with carrot_on_a_stick{immo:1b,HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§2Immobilisation\"}",Lore:["{\"text\":\"§2Magic Cost : 15\"}"]},Enchantments:[{}]}


#FLYING SPELL
item replace entity @a[tag=l15,tag=wicked,tag=broom_shield,limit=1,scores={select=1,magie=0..}] hotbar.3 with feather{broom:1b,HideFlags:3,CustomModelData:10140015,Unbreakable:1,display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}

item replace entity @a[tag=l15,tag=wicked,tag=broom_fly,limit=1,scores={select=1,magie=0..}] hotbar.3 with feather{broom:2b,HideFlags:3,CustomModelData:10140016,Unbreakable:1,display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}



###########################
# POOFING
###########################

execute as @a[tag=wicked,limit=1,scores={magie=10..,click=1..},predicate=wicked:select_poofing,predicate=!wicked:is_sneaking] at @s run function wicked:poofing/cast
execute as @a[tag=wicked,limit=1,scores={magie=10..,click=1..},predicate=wicked:select_poofing,predicate=wicked:is_sneaking] at @s run function wicked:poofing/cast2



###########################
# SCEPTER
###########################
execute as @a[tag=wicked,limit=1,scores={magie=10..,click=1..},predicate=wicked:select_scepter] at @s run function wicked:wicked_ray/cast




###########################
# Clear Scepter
########################### 
execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{tag:{scepter:1b}}}]
execute as @a[tag=wicked,limit=1,scores={select=0}] run clear @s carrot_on_a_stick{scepter:1b}


###########################
# BRO SCORE
########################### 
execute as @a[tag=l40,tag=wicked,limit=1,scores={drop=1,select=1},predicate=wicked:select_broom_2] run function wicked:broom/broom_change_shield
execute as @a[tag=l40,tag=wicked,limit=1,scores={drop=1,select=1},predicate=wicked:select_broom] run function wicked:broom/broom_change_fly

scoreboard players set @a[tag=wicked,limit=1,scores={drop=1..}] drop 0





###########################
# SCEPTER SHIELD
###########################

##### DEVIATION

execute as @a[tag=l40,tag=wicked,limit=1,scores={select=1},predicate=wicked:is_sneaking,predicate=wicked:select_broom] at @s run execute as @e[type=#projectiles,sort=nearest,distance=..2] run kill @s

execute as @a[tag=l40,tag=wicked,limit=1,scores={select=1},predicate=wicked:is_sneaking,predicate=wicked:select_broom] at @s run effect give @s resistance 2 255 true

###### PARTICLE 
execute at @a[tag=l40,tag=wicked,limit=1,scores={select=1},predicate=wicked:is_sneaking,predicate=wicked:select_broom] run function wicked:cauldron/particle/alchemymod_shield



###########################
# IMMOBILIZATION
###########################
execute as @a[tag=wicked,tag=!fixa,limit=1,scores={magie=15..,click=1..},predicate=wicked:select_immo] at @s positioned ^ ^ ^6 run function wicked:immobilization/castfix

execute as @a[tag=fixa] run function wicked:immobilization/fixa
execute as @e[tag=fix] at @s run function wicked:immobilization/fixeffect




###########################
# FLYING SPELL
###########################
scoreboard players set @a[tag=wicked,gamemode=!spectator,predicate=wicked:select_broom_2] broo 2
scoreboard players set @a[tag=wicked,gamemode=!spectator,predicate=wicked:select_broom_2,predicate=wicked:is_sneaking] broo 1
scoreboard players set @a[tag=wicked,scores={broo=1..},predicate=!wicked:select_broom_2] broo 0
execute as @a[tag=wicked,limit=1,scores={broo=0},predicate=!wicked:select_broom_2] at @s run clear @s command_block{HideFlags:3,CustomModelData:14120001}



##########################
# SPELLS
##########################

# Locator Spell
execute as @a[tag=wicked,limit=1,scores={spell=2,magie=20..}] at @s run function wicked:grimmerie/locator/locat

# Protection Spell
execute as @a[tag=wicked,limit=1,scores={spell=1,magie=40..}] at @s run function wicked:grimmerie/protect

# HealingSpell
execute as @a[tag=wicked,limit=1,scores={spell=3,magie=30..}] at @s run function wicked:grimmerie/heal

# Dispel
execute as @a[tag=wicked,limit=1,scores={spell=68,magie=5..}] at @s run function wicked:grimmerie/potionclear

# Aura-Explosion
execute as @a[tag=wicked,scores={spell=20,magie=15..},limit=1] at @s run function wicked:grimmerie/aura

# Astral Projection Spell
execute as @a[scores={spell=38,magie=30..},tag=wicked,limit=1] at @s run function wicked:grimmerie/astral_projection/astralp

execute at @e[tag=PAJ] run function wicked:cauldron/particle/alchemymod_v_t
execute at @e[tag=PAJ] run particle happy_villager ^ ^ ^ 0.5 1 0.5 0.001 10 force



#Ghost walk
execute as @a[tag=wicked,limit=1,scores={spell=600,magie=30..}] at @s run function wicked:grimmerie/ghost_walk/ghost_walk



###########################
# SPELLBOOK
###########################
execute as @e[tag=wicked,predicate=wicked:is_sneaking,predicate=wicked:select_grimmerie] at @s run data merge entity @e[type=item,limit=1,sort=nearest,distance=..5] {Item:{tag:{Unbreakable:1b}}}



###########################
# SALEM BOOST
###########################
execute at @e[tag=salem] run effect give @p[tag=wicked,distance=..10] luck 10 5 true 
execute at @e[tag=salem] run effect give @p[tag=wicked,distance=..10] resistance 5 1 true 


###########################
# CLEANER
###########################
execute as @a[tag=actif,limit=1] run function wicked:cleaner 



###########################
# CLEAR FLOOR
###########################
execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{tag:{broom:1b}}}]
execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{tag:{broom:2b}}}]

execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{tag:{poofing:1b}}}]
execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{tag:{fireball:1b,OnGround:1b}}}]
execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{tag:{immo:1b}}}]
execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{tag:{scepter:1b}}}]
execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{tag:{CustomModelData:14120001}}}]
execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{tag:{reloading:1b}}}]



#### REALOADING 
clear @a[tag=wicked,limit=1] red_dye{CustomModelData:10140002}

#POOFING
execute if score @a[tag=wicked,limit=1,scores={select=1}] magie matches 0..9 run item replace entity @a[tag=l20,tag=wicked,limit=1,scores={select=1,magie=0..9}] hotbar.1 with red_dye{reloading:1b,HideFlags:3,CustomModelData:10140002,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}

#IMMOBILIZATION
execute if score @a[tag=wicked,limit=1,scores={select=1}] magie matches 0..14 run item replace entity @a[tag=l30,tag=wicked,limit=1,scores={select=1,magie=0..14}] hotbar.2 with red_dye{reloading:1b,HideFlags:3,CustomModelData:10140002,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}

#wicked ray
execute if score @a[tag=wicked,limit=1,scores={select=1}] magie matches 0..9 run item replace entity @a[tag=wicked,limit=1,scores={select=1,magie=0..9}] hotbar.0 with red_dye{reloading:1b,HideFlags:3,CustomModelData:10140002,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}



#### Verrouillage des slots

#POOFING
item replace entity @a[tag=!l20,tag=wicked,limit=1,scores={select=1}] hotbar.1 with red_dye{reloading:1b,HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}

#IMMOBILIZATION
item replace entity @a[tag=!l30,tag=wicked,limit=1,scores={select=1}] hotbar.2 with red_dye{reloading:1b,HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}

#BROOM
item replace entity @a[tag=!l15,tag=wicked,limit=1,scores={select=1}] hotbar.3 with red_dye{reloading:1b,HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}






#### MAGIC MIRROR 
# scoreboard objectives add place_mirror miencraft used gray banner
execute as @a[scores={click=1..},predicate=wicked:select_mirror_1] at @s run function wicked:magic_mirror/set_mirror_first
execute as @a[scores={click=1..},predicate=wicked:select_mirror_2] at @s run function wicked:magic_mirror/set_mirror_second

execute as @e[type=minecraft:interaction,tag=magic_mirror] at @s run function wicked:magic_mirror/kill_mirror
execute as @e[type=minecraft:interaction,tag=magic_mirror] at @s run function wicked:magic_mirror/click_magic_mirror






###########################
# ANTI LAG & BUG
###########################
scoreboard players set @a[tag=wicked,scores={select=0},limit=1] broom 0
scoreboard players set @a click 0
scoreboard players set @a click3 0
