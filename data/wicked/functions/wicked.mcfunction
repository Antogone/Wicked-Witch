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
item replace entity @a[tag=wicked,limit=1,scores={select=1,magie=0..}] hotbar.0 with carrot_on_a_stick{scepter:1b,HideFlags:3,CustomModelData:10140003,Unbreakable:1b,display:{Name:"{\"text\":\"§2Scepter\"}",Lore:["{\"text\":\"§2Magic Cost : 10\"}"]},Enchantments:[{id:"minecraft:sharpness",lvl:8s},{id:"minecraft:smite",lvl:8s},{id:"minecraft:bane_of_arthropods",lvl:8s}],AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:2,UUIDLeast:80949,UUIDMost:496823},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:12,Operation:1,UUIDLeast:690100,UUIDMost:811832}]}

#POOFING
item replace entity @a[tag=l20,tag=wicked,limit=1,scores={select=1,magie=10..}] hotbar.2 with carrot_on_a_stick{poofing:1b,HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§2Poofing\"}",Lore:["{\"text\":\"§2Magic Cost : 10\"}"]},Enchantments:[{}]}

#IMMOBILIZATION
item replace entity @a[tag=l30,tag=wicked,limit=1,scores={select=1,magie=10..}] hotbar.3 with carrot_on_a_stick{immo:1b,HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§2Immobilization\"}",Lore:["{\"text\":\"§2Magic Cost : 10\"}"]},Enchantments:[{}]}

#FIREBALL
item replace entity @a[tag=l10,tag=wicked,limit=1,scores={select=1,magie=5..}] hotbar.1 with snowball{fireball:1b,HideFlags:3,CustomModelData:10140002,Unbreakable:1,display:{Name:"{\"text\":\"§2Fireball\"}",Lore:["{\"text\":\"§2Magic Cost : 5\"}"]},Enchantments:[{}]}


#FLYING SPELL
item replace entity @a[tag=l15,tag=wicked,limit=1,scores={select=1,magie=0..,typevol=0}] hotbar.4 with feather{broom:1b,HideFlags:3,CustomModelData:10140015,Unbreakable:1,display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}



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
scoreboard players set @a[tag=wicked,limit=1,scores={drop=1,select=1},predicate=wicked:select_scepter] bro 1
scoreboard players set @a[tag=wicked,limit=1,scores={drop=2..,bro=1,select=1},predicate=wicked:select_scepter] bro 2
scoreboard players set @a[tag=wicked,limit=1,scores={drop=1..,bro=2}] bro 0
scoreboard players set @a[tag=wicked,limit=1,scores={bro=0}] drop 0


###########################
# SCEPTER SHIELD
###########################

##### DEVIATION

execute as @a[tag=l40,tag=wicked,limit=1,scores={bro=0,select=1},predicate=wicked:is_sneaking,predicate=wicked:select_scepter] at @s run execute as @e[type=#impact_projectiles,sort=nearest,distance=..3,limit=1] run data merge entity @s {Motion:[0.0,-1.0,0.0],NoAI:1}
execute as @a[tag=l40,tag=wicked,limit=1,scores={bro=0,select=1},predicate=wicked:is_sneaking,predicate=wicked:select_scepter] at @s run execute as @e[type=#projectiles,sort=nearest,distance=..3,limit=6] run data merge entity @s {Motion:[0.0,-1.0,0.0],NoAI:1}
execute as @a[tag=l40,tag=wicked,limit=1,scores={bro=0,select=1},predicate=wicked:is_sneaking,predicate=wicked:select_scepter] at @s run effect give @s resistance 2 255 true

###### PARTICLE 
execute at @a[tag=l40,tag=wicked,limit=1,scores={bro=0,select=1},predicate=wicked:is_sneaking,predicate=wicked:select_scepter] run function wicked:cauldron/particle/alchemymod_shield



###########################
# IMMOBILIZATION
###########################
execute as @a[tag=wicked,tag=!fixa,limit=1,scores={magie=10..,click=1..},predicate=wicked:select_immo] at @s positioned ^ ^ ^6 run function wicked:immobilization/castfix

execute as @a[tag=fixa] run function wicked:immobilization/fixa
execute as @e[tag=fix] at @s run function wicked:immobilization/fixeffect





###########################
# FIREBALL
###########################
execute as @a[tag=wicked,limit=1,scores={magie=5..,click3=1..},predicate=wicked:select_fireball] at @s run function wicked:fireball

#Particle Management au contact
execute at @e[tag=ball] at @s run execute at @e[tag=!wicked,type=!#dontharm,distance=..3,sort=nearest] run particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.2 -1 0.2 0.1 200 force
execute at @e[tag=ball] at @s run execute at @e[tag=!wicked,type=!#dontharm,distance=..3,sort=nearest] run particle soul_fire_flame ^ ^ ^ 0.2 -1 0.2 0.1 200 force

#Give fire + magic damage
execute as @e[tag=ball] at @s run execute at @e[tag=!wicked,type=!#dontharm,distance=..3,sort=nearest] run data merge entity @e[tag=!wicked,type=!#dontharm,distance=..3,sort=nearest,limit=1] {Fire:56s}
execute as @e[tag=ball] at @s run execute as @e[tag=!wicked,type=!#dontharm,distance=..3,sort=nearest] run damage @s 8 minecraft:magic by @p[tag=wicked]

#Particle Management
execute as @e[tag=ball] at @s run particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.3 0.3 0.3 0.001 50 force
execute as @e[tag=ball] at @s run particle soul_fire_flame ^ ^ ^ 0.3 0.3 0.3 0.001 50 force





###########################
# FLYING SPELL
###########################
scoreboard players set @a[tag=wicked,gamemode=!spectator,predicate=wicked:select_broom] broo 2

scoreboard players set @a[tag=wicked,gamemode=!spectator,predicate=wicked:select_broom,predicate=wicked:is_sneaking] broo 1

scoreboard players set @a[tag=wicked,scores={broo=1..},predicate=!wicked:select_broom] broo 0

# execute as @a[tag=wicked,limit=1,scores={typevol=0,broo=1},nbt={SelectedItem:{id:"minecraft:feather",tag:{display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}}}] at @s run function broom

execute as @a[tag=wicked,limit=1,scores={typevol=0,broo=0},predicate=!wicked:select_broom] at @s run clear @s command_block{HideFlags:3,CustomModelData:14120001}



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
# ANTI LAG & BUG
###########################
execute as @a[tag=wicked,limit=1] at @s run kill @e[tag=ball,distance=50..]
execute as @e[tag=ball] at @s if block ~ ~ ~ water run kill @e[tag=ball]

scoreboard players set @a[tag=wicked,scores={select=0},limit=1] broom 0
scoreboard players set @a[tag=wicked,limit=1] click 0
scoreboard players set @a[tag=wicked,limit=1] click3 0

# ##########################
# # AMPLIFICATOR
# ##########################

# # ########## SET Amplificator

# execute at @e[tag=set_ampli] run execute at @e[tag=ampli] run fill ~ ~ ~ ~ ~2 ~ air
# execute at @e[tag=set_ampli] run kill @e[tag=ampli]
# execute at @e[tag=set_ampli] run kill @e[tag=em_amp]


# execute at @e[tag=set_ampli] run setblock ~ ~ ~ emerald_block
# execute at @e[tag=set_ampli] run setblock ~ ~2 ~ emerald_block
# execute at @e[tag=set_ampli] run summon marker ~ ~ ~ {Invisible:1b,PersistenceRequired:1b,Tags:["ampli"]}
# execute as @e[tag=set_ampli,type=slime] at @s run summon marker ~ ~ ~ {Invisible:1b,PersistenceRequired:1b,Tags:["remove_itm"]}
# execute as @e[tag=remove_itm] at @s run kill @e[tag=set_ampli,distance=..2]
# execute as @e[tag=remove_itm] at @s run kill @e[type=item,distance=..2]
# execute as @e[tag=remove_itm] at @s run kill @e[tag=remove_itm,distance=..2]

# # ########## RECUP CAULDRON 
# execute at @e[tag=ampli] as @e[tag=ampli] if block ~ ~ ~ air run summon item ~ ~ ~ {Item:{id:"minecraft:slime_spawn_egg",Count:1b,tag:{display:{Name:"{\"text\":\"§2Amplificator\"}"},EntityTag:{Size:0,wasOnGround:1,NoAI:1,Silent:1,Tags:["set_ampli"]},Enchantments:[{}]}}}
# execute at @e[tag=ampli] as @e[tag=ampli] if block ~ ~2 ~ air run summon item ~ ~ ~ {Item:{id:"minecraft:slime_spawn_egg",Count:1b,tag:{display:{Name:"{\"text\":\"§2Amplificator\"}"},EntityTag:{Size:0,wasOnGround:1,NoAI:1,Silent:1,Tags:["set_ampli"]},Enchantments:[{}]}}}


# execute at @e[tag=ampli] as @e[tag=ampli] if block ~ ~ ~ air run fill ~ ~ ~ ~ ~2 ~ air
# execute at @e[tag=ampli] as @e[tag=ampli] if block ~ ~2 ~ air run fill ~ ~ ~ ~ ~2 ~ air

# execute at @e[tag=ampli] as @e[tag=ampli] if block ~ ~ ~ air run kill @e[tag=em_amp]
# execute at @e[tag=ampli] as @e[tag=ampli] if block ~ ~2 ~ air run kill @e[tag=em_amp]

# execute at @e[tag=ampli] as @e[tag=ampli] if block ~ ~ ~ air run kill @e[tag=ampli]
# execute at @e[tag=ampli] as @e[tag=ampli] if block ~ ~2 ~ air run kill @e[tag=ampli]


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
execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{tag:{poofing:1b}}}]
execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{tag:{fireball:1b,OnGround:1b}}}]
execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{tag:{immo:1b}}}]
execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{tag:{scepter:1b}}}]
execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{tag:{CustomModelData:14120001}}}]
execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{tag:{reloading:1b}}}]



#### REALOADING 
clear @a[tag=wicked,limit=1] red_dye{CustomModelData:10140002}

#POOFING
execute if score @a[tag=wicked,limit=1,scores={select=1}] magie matches 0..9 run item replace entity @a[tag=l20,tag=wicked,limit=1,scores={select=1,magie=0..9}] hotbar.2 with red_dye{reloading:1b,HideFlags:3,CustomModelData:10140002,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}

#IMMOBILIZATION
execute if score @a[tag=wicked,limit=1,scores={select=1}] magie matches 0..9 run item replace entity @a[tag=l30,tag=wicked,limit=1,scores={select=1,magie=0..9}] hotbar.3 with red_dye{reloading:1b,HideFlags:3,CustomModelData:10140002,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}

#FIREBALL
execute if score @a[tag=wicked,limit=1,scores={select=1}] magie matches 0..4 run item replace entity @a[tag=l10,tag=wicked,limit=1,scores={select=1,magie=0..4}] hotbar.1 with red_dye{reloading:1b,HideFlags:3,CustomModelData:10140002,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}




#POOFING
item replace entity @a[tag=!l20,tag=wicked,limit=1,scores={select=1}] hotbar.2 with red_dye{reloading:1b,HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}

#IMMOBILIZATION
item replace entity @a[tag=!l30,tag=wicked,limit=1,scores={select=1}] hotbar.3 with red_dye{reloading:1b,HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}

#FIREBALL
item replace entity @a[tag=!l10,tag=wicked,limit=1,scores={select=1}] hotbar.1 with red_dye{reloading:1b,HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}

#BROOM
item replace entity @a[tag=!l15,tag=wicked,limit=1,scores={select=1}] hotbar.4 with red_dye{reloading:1b,HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}


#/give @p minecraft:green_banner{BlockEntityTag:{Patterns:[{Pattern:"cs",Color:5},{Pattern:"cs",Color:13},{Pattern:"bts",Color:5},{Pattern:"bts",Color:13},{Pattern:"tts",Color:5},{Pattern:"tts",Color:13},{Pattern:"cr",Color:5},{Pattern:"cr",Color:13},{Pattern:"flo",Color:5},{Pattern:"flo",Color:13},{Pattern:"bo",Color:5},{Pattern:"bo",Color:13}]}}




execute as @e[type=minecraft:interaction,tag=magic_mirror] at @s run function wicked:magic_mirror/click_magic_mirror
# summon interaction ~ ~ ~ {width:1f, height: 1.5f, response: 1b, Tags: [magic_mirror],Passengers:[{id:"minecraft:marker"}]}



# Write
# execute as @e[type=interaction,tag=magic_mirror] at @s on passengers run data modify entity @s data.magic_id set from storage magic_mirror magic_id

# Read
# execute as @e[type=interaction,tag=magic_mirror] at @s on passengers run data get entity @s data.magic_id