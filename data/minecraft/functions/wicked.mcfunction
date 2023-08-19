###########################
#WICKED WITCH 
#by Antogone
#Versions 2023
###########################

###########################
# BONUS 
###########################

effect give @a[tag=wicked,limit=1] saturation 5 0 true
effect give @a[tag=wicked,limit=1] jump_boost 5 1 true
effect give @a[tag=wicked,limit=1,scores={broom=1}] jump_boost 5 2 true

###########################
# AFFICHAGE MAGIE + RECHARGE
###########################
# AFFICHAGE
execute as @a[tag=wicked,limit=1] run title @s actionbar ["",{"text":"Energie Magique :","color":"dark_green"},{"text":" ","color":"#00CE00"},{"score":{"name":"@a[tag=wicked,limit=1]","objective":"magie"},"color":"#00CE00"}]

#RECHARGE


# NO MAGIC EXTENSION
scoreboard players add @a[tag=wicked,tag=!l50,tag=!l60,tag=!l70,tag=!l80,limit=1,scores={magie=..99}] itm 1
scoreboard players add @a[tag=wicked,tag=l50,tag=!l60,tag=!l70,tag=!l80,limit=1,scores={magie=..199}] itm 1
scoreboard players add @a[tag=wicked,tag=l60,tag=!l70,tag=!l80,limit=1,scores={magie=..299}] itm 1
scoreboard players add @a[tag=wicked,tag=l70,tag=!l80,limit=1,scores={magie=..399}] itm 1
scoreboard players add @a[tag=wicked,tag=l80,limit=1,scores={magie=..499}] itm 1



scoreboard players set @a[tag=wicked,tag=!l50,tag=!l60,tag=!l70,tag=!l80,limit=1,scores={magie=100}] itm 0
scoreboard players set @a[tag=wicked,tag=l50,tag=!l60,tag=!l70,tag=!l80,limit=1,scores={magie=200}] itm 0
scoreboard players set @a[tag=wicked,tag=l60,tag=!l70,tag=!l80,limit=1,scores={magie=300}] itm 0
scoreboard players set @a[tag=wicked,tag=l70,tag=!l80,limit=1,scores={magie=400}] itm 0
scoreboard players set @a[tag=wicked,tag=l80,limit=1,scores={magie=500}] itm 0



execute if score @a[tag=wicked,limit=1,scores={select=0}] itm matches 20..20 run scoreboard players add @a[tag=wicked,limit=1,scores={magie=..499}] magie 1
execute if score @a[tag=wicked,limit=1,scores={select=0}] itm matches 20..100 run execute as @a[scores={select=0,itm=10..}] run scoreboard players set @s itm 0



execute if score @a[tag=wicked,tag=!l50,tag=!l60,tag=!l70,tag=!l80,limit=1,scores={select=1}] itm matches 30..30 run execute as @a[scores={select=1,itm=30}] run scoreboard players add @a[tag=wicked,limit=1,scores={magie=..99}] magie 1
execute if score @a[tag=wicked,tag=l50,tag=!l60,tag=!l70,tag=!l80,limit=1,scores={select=1}] itm matches 30..30 run execute as @a[scores={select=1,itm=30}] run scoreboard players add @a[tag=wicked,limit=1,scores={magie=..199}] magie 1
execute if score @a[tag=wicked,tag=l60,tag=!l70,tag=!l80,limit=1,scores={select=1}] itm matches 30..30 run execute as @a[scores={select=1,itm=30}] run scoreboard players add @a[tag=wicked,limit=1,scores={magie=..299}] magie 1
execute if score @a[tag=wicked,tag=l70,tag=!l80,limit=1,scores={select=1}] itm matches 30..30 run execute as @a[scores={select=1,itm=30}] run scoreboard players add @a[tag=wicked,limit=1,scores={magie=..399}] magie 1
execute if score @a[tag=wicked,tag=l80,limit=1,scores={select=1}] itm matches 30..30 run execute as @a[scores={select=1,itm=30}] run scoreboard players add @a[tag=wicked,limit=1,scores={magie=..499}] magie 1


execute if score @a[tag=wicked,limit=1,scores={select=1}] itm matches 30..100 run execute as @a[scores={select=1,itm=20..}] run scoreboard players set @s itm 0


########################
# MODE MAGIE ACTIF
###########################
execute if entity @a[tag=wicked,limit=1,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",tag:{ench:[{lvl:211,id:34}]}}]}] run execute if score @a[tag=wicked,limit=1] select matches 1 run function normal
execute if entity @a[tag=wicked,limit=1,nbt={Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",tag:{ench:[{lvl:211,id:34}]}}]}] run execute if score @a[tag=wicked,limit=1] select matches 0 run function don

execute if entity @a[tag=wicked,limit=1,nbt={Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",tag:{ench:[{lvl:211,id:34}]}}]}] run scoreboard players set @a[tag=wicked,limit=1,nbt={Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",tag:{ench:[{lvl:211,id:34}]}}]}] select 1
execute if entity @a[tag=wicked,limit=1,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",tag:{ench:[{lvl:211,id:34}]}}]}] run scoreboard players set @a[tag=wicked,limit=1,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",tag:{ench:[{lvl:211,id:34}]}}]}] select 0

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
execute if score @a[tag=wicked,limit=1,scores={select=1}] magie matches 0.. if entity @a[tag=wicked,limit=1,nbt=!{Inventory:[{Slot:0b,id:"carrot_on_a_stick",tag:{HideFlags:3,CustomModelData:10140003,Unbreakable:1b,display:{Name:"{\"text\":\"§2Scepter\"}"},Enchantments:[{id:"minecraft:sharpness",lvl:8s},{id:"minecraft:smite",lvl:8s},{id:"minecraft:bane_of_arthropods",lvl:8s}],AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:2,UUIDLeast:80949,UUIDMost:496823},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:12,Operation:1,UUIDLeast:690100,UUIDMost:811832}]}}]}] run item replace entity @a[tag=wicked,limit=1,scores={select=1,magie=0..}] hotbar.0 with carrot_on_a_stick{HideFlags:3,CustomModelData:10140003,Unbreakable:1b,display:{Name:"{\"text\":\"§2Scepter\"}"},Enchantments:[{id:"minecraft:sharpness",lvl:8s},{id:"minecraft:smite",lvl:8s},{id:"minecraft:bane_of_arthropods",lvl:8s}],AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:2,UUIDLeast:80949,UUIDMost:496823},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:12,Operation:1,UUIDLeast:690100,UUIDMost:811832}]}

#POOFING
execute if score @a[tag=wicked,limit=1,scores={select=1}] magie matches 10.. if entity @a[tag=wicked,limit=1,nbt=!{Inventory:[{Slot:2b,id:"carrot_on_a_stick",tag:{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§2Poofing\"}"},Enchantments:[{}]}}]}] run item replace entity @a[tag=l20,tag=wicked,limit=1,scores={select=1,magie=10..}] hotbar.2 with carrot_on_a_stick{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§2Poofing\"}"},Enchantments:[{}]}

#IMMOBILIZATION
execute if score @a[tag=wicked,limit=1,scores={select=1}] magie matches 10.. if entity @a[tag=wicked,limit=1,nbt=!{Inventory:[{Slot:3b,id:"carrot_on_a_stick",tag:{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§2Immobilization\"}"},Enchantments:[{}]}}]}] run item replace entity @a[tag=l30,tag=wicked,limit=1,scores={select=1,magie=10..}] hotbar.3 with carrot_on_a_stick{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§2Immobilization\"}"},Enchantments:[{}]}

#FIREBALL
execute if score @a[tag=wicked,limit=1,scores={select=1}] magie matches 5.. if entity @a[tag=wicked,limit=1,nbt=!{Inventory:[{Slot:1b,id:"snowball",tag:{HideFlags:3,CustomModelData:10140002,Unbreakable:1,display:{Name:"{\"text\":\"§2Fireball\"}"},Enchantments:[{}]}}]}] run item replace entity @a[tag=l10,tag=wicked,limit=1,scores={select=1,magie=5..}] hotbar.1 with snowball{HideFlags:3,CustomModelData:10140002,Unbreakable:1,display:{Name:"{\"text\":\"§2Fireball\"}"},Enchantments:[{}]}

#FLYING SPELL
execute if score @a[tag=wicked,limit=1,scores={select=1,typevol=0}] magie matches 0.. if entity @a[tag=wicked,limit=1,nbt=!{Inventory:[{Slot:4b,id:"feather",tag:{HideFlags:3,CustomModelData:10140015,Unbreakable:1,display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}}]}] run item replace entity @a[tag=l15,tag=wicked,limit=1,scores={select=1,magie=0..,typevol=0}] hotbar.4 with feather{HideFlags:3,CustomModelData:10140015,Unbreakable:1,display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}


###########################
# POOFING
###########################
execute if score @a[tag=wicked,limit=1,scores={magie=10..,sneak=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"§2Poofing\"}"}}}}] click matches 1..100 run execute as @a[tag=wicked,limit=1] at @s run function cast
execute if score @a[tag=wicked,limit=1,scores={magie=10..,sneak=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"§2Poofing\"}"}}}}] click matches 1..100 run execute as @a[tag=wicked,limit=1] at @s run function cast2



###########################
# SCEPTER
###########################
execute if score @a[tag=wicked,limit=1,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"§2Scepter\"}"}}}}] click matches 1..10 run execute as @a[tag=wicked,limit=1] at @s run function cast6



###########################
# SCEPTER FLY
########################### 
execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:3,CustomModelData:10140003,Unbreakable:1b,display:{Name:"{\"text\":\"§2Scepter\"}"},Enchantments:[{id:"minecraft:sharpness",lvl:8s},{id:"minecraft:smite",lvl:8s},{id:"minecraft:bane_of_arthropods",lvl:8s}],AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:2,UUIDLeast:80949,UUIDMost:496823},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:12,Operation:1,UUIDLeast:690100,UUIDMost:811832}]}}}]


execute as @a[tag=wicked,limit=1,scores={select=0}] if score @a[tag=wicked,limit=1] select matches 0..0 run clear @s carrot_on_a_stick{HideFlags:3,CustomModelData:10140003,Unbreakable:1b,display:{Name:"{\"text\":\"§2Scepter\"}"},Enchantments:[{id:"minecraft:sharpness",lvl:8s},{id:"minecraft:smite",lvl:8s},{id:"minecraft:bane_of_arthropods",lvl:8s}],AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:2,UUIDLeast:80949,UUIDMost:496823},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:12,Operation:1,UUIDLeast:690100,UUIDMost:811832}]}

scoreboard players set @a[tag=wicked,limit=1,scores={drop=1,select=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{HideFlags:3,CustomModelData:10140003,Unbreakable:1b,display:{Name:"{\"text\":\"§2Scepter\"}"},Enchantments:[{id:"minecraft:sharpness",lvl:8s},{id:"minecraft:smite",lvl:8s},{id:"minecraft:bane_of_arthropods",lvl:8s}],AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:2,UUIDLeast:80949,UUIDMost:496823},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:12,Operation:1,UUIDLeast:690100,UUIDMost:811832}]}}}] bro 1

scoreboard players set @a[tag=wicked,limit=1,scores={drop=2..,bro=1,select=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{HideFlags:3,CustomModelData:10140003,Unbreakable:1b,display:{Name:"{\"text\":\"§2Scepter\"}"},Enchantments:[{id:"minecraft:sharpness",lvl:8s},{id:"minecraft:smite",lvl:8s},{id:"minecraft:bane_of_arthropods",lvl:8s}],AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:2,UUIDLeast:80949,UUIDMost:496823},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:12,Operation:1,UUIDLeast:690100,UUIDMost:811832}]}}}] bro 2
scoreboard players set @a[scores={drop=1..,bro=2}] bro 0
scoreboard players set @a[scores={bro=0}] drop 0


#  execute as @a[tag=wicked,scores={select=0}] at @s unless block ~ ~-1 ~ barrier run fill ~-10 ~-10 ~10 ~10 ~10 ~-10 air replace barrier
#  execute as @a[tag=wicked,scores={select=1}] at @s unless block ~ ~-1 ~ barrier run fill ~-10 ~-10 ~10 ~10 ~10 ~-10 air replace barrier
#  execute as @a[tag=wicked,scores={select=0}] at @s run fill ~-10 ~-1 ~10 ~10 ~-1 ~-10 air replace barrier
#  execute as @a[tag=wicked,scores={select=1}] at @s run fill ~-10 ~-1 ~10 ~10 ~-1 ~-10 air replace barrier

#  execute as @a[tag=wicked,scores={select=0}] at @s if block ~ ~-1 ~ barrier run fill ~-5 ~-5 ~5 ~5 ~5 ~-5 air replace barrier
#  execute as @a[tag=wicked,scores={select=0}] at @s if block ~ ~-1 ~ barrier run fill ~-5 ~-1 ~5 ~5 ~1 ~-5 air replace barrier
#  execute as @a[tag=wicked,scores={select=1}] at @s if block ~ ~-1 ~ barrier run fill ~-5 ~-5 ~5 ~5 ~5 ~-5 air replace barrier
#  execute as @a[tag=wicked,scores={select=1}] at @s if block ~ ~-1 ~ barrier run fill ~-5 ~-1 ~5 ~5 ~1 ~-5 air replace barrier

#  execute as @a[gamemode=!spectator,tag=l15,tag=wicked,scores={select=1,bro=1,typevol=1}] at @s if block ~ ~-1 ~ #minecraft:airs run fill ~1 ~-1 ~-1 ~-1 ~-1 ~1 barrier replace air

#  execute as @a[gamemode=!spectator,tag=l15,tag=wicked,scores={select=1,sneak=1..,bro=1,typevol=1}] at @s if block ~ ~-1 ~ barrier run fill ~1 ~-1 ~-1 ~-1 ~-1 ~1 air replace barrier
#  execute as @a[gamemode=!spectator,tag=l15,tag=wicked,scores={select=1,sneak=1..,bro=1,typevol=1}] run effect give @s jump_boost 1 255 true
#  execute as @a[gamemode=!spectator,tag=l15,tag=wicked,scores={select=1,bro=1,typevol=1},x_rotation=-90] at @s if block ~ ~-1 ~ barrier run effect give @s levitation 1 4 true

# execute as @a[gamemode=!spectator,tag=l15,tag=wicked,scores={select=1,bro=1,typevol=1}] at @s if block ~ ~-1 ~ barrier anchored feet run function cauldron/alchemymod_fly
# execute at @e[scores={spell=6}] run fill ~-10 ~-10 ~10 ~10 ~10 ~-10 air replace barrier

###########################
# SCEPTER SHIELD
###########################

##### DEVIATION

execute as @a[tag=l40,tag=wicked,limit=1,scores={bro=0,sneak=1..,select=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{HideFlags:3,CustomModelData:10140003,Unbreakable:1b,display:{Name:"{\"text\":\"§2Scepter\"}"},Enchantments:[{id:"minecraft:sharpness",lvl:8s},{id:"minecraft:smite",lvl:8s},{id:"minecraft:bane_of_arthropods",lvl:8s}],AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:2,UUIDLeast:80949,UUIDMost:496823},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:12,Operation:1,UUIDLeast:690100,UUIDMost:811832}]}}}] at @s unless block ~ ~-1 ~ #minecraft:airs run execute as @e[type=#impact_projectiles,sort=nearest,distance=..3] run data merge entity @s {Motion:[0.0,-1.0,0.0],NoAI:1}

execute as @a[tag=l40,tag=wicked,limit=1,scores={bro=0,sneak=1..,select=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{HideFlags:3,CustomModelData:10140003,Unbreakable:1b,display:{Name:"{\"text\":\"§2Scepter\"}"},Enchantments:[{id:"minecraft:sharpness",lvl:8s},{id:"minecraft:smite",lvl:8s},{id:"minecraft:bane_of_arthropods",lvl:8s}],AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:2,UUIDLeast:80949,UUIDMost:496823},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:12,Operation:1,UUIDLeast:690100,UUIDMost:811832}]}}}] at @s unless block ~ ~-1 ~ #minecraft:airs run execute as @e[type=#projectiles,sort=nearest,distance=..3] run data merge entity @s {Motion:[0.0,-1.0,0.0],NoAI:1}

execute as @a[tag=l40,tag=wicked,limit=1,scores={bro=0,sneak=1..,select=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{HideFlags:3,CustomModelData:10140003,Unbreakable:1b,display:{Name:"{\"text\":\"§2Scepter\"}"},Enchantments:[{id:"minecraft:sharpness",lvl:8s},{id:"minecraft:smite",lvl:8s},{id:"minecraft:bane_of_arthropods",lvl:8s}],AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:2,UUIDLeast:80949,UUIDMost:496823},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:12,Operation:1,UUIDLeast:690100,UUIDMost:811832}]}}}] at @s unless block ~ ~-1 ~ #minecraft:airs run effect give @s resistance 2 255 true


###### PARTICLE 
execute at @a[tag=l40,tag=wicked,limit=1,scores={bro=0,sneak=1..,select=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{HideFlags:3,CustomModelData:10140003,Unbreakable:1b,display:{Name:"{\"text\":\"§2Scepter\"}"},Enchantments:[{id:"minecraft:sharpness",lvl:8s},{id:"minecraft:smite",lvl:8s},{id:"minecraft:bane_of_arthropods",lvl:8s}],AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:2,UUIDLeast:80949,UUIDMost:496823},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:12,Operation:1,UUIDLeast:690100,UUIDMost:811832}]}}}] unless block ~ ~-1 ~ #minecraft:airs run function cauldron/alchemymod_shield

execute at @a[tag=l40,tag=wicked,limit=1,scores={bro=0,sneak=1..,select=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{HideFlags:3,CustomModelData:10140003,Unbreakable:1b,display:{Name:"{\"text\":\"§2Scepter\"}"},Enchantments:[{id:"minecraft:sharpness",lvl:8s},{id:"minecraft:smite",lvl:8s},{id:"minecraft:bane_of_arthropods",lvl:8s}],AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:2,UUIDLeast:80949,UUIDMost:496823},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:12,Operation:1,UUIDLeast:690100,UUIDMost:811832}]}}}] unless block ~ ~-1 ~ #minecraft:airs run function cauldron/alchemymod_shield



###########################
# IMMOBILIZATION
###########################
execute if score @a[tag=wicked,limit=1,scores={magie=10..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"§2Immobilization\"}"}}}}] click matches 1..100 run execute as @a[tag=wicked,limit=1] at @s positioned ^ ^ ^6 run function castfix
execute as @a[tag=fixa] run function fixa
execute as @e[tag=fix] at @s run function fixeffect


###########################
# FIREBALL
###########################
execute if score @a[tag=wicked,limit=1,scores={magie=5..},nbt={SelectedItem:{id:"minecraft:snowball",tag:{display:{Name:"{\"text\":\"§2Fireball\"}"}}}}] click3 matches 1..10 run execute as @a[tag=wicked,limit=1] at @s run function fireball

#Particle Management
execute as @e[tag=ball] at @s run execute at @e[tag=!wicked,type=!#dontharm,distance=..3,sort=nearest] run particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.2 -1 0.2 0.1 200 force
execute as @e[tag=ball] at @s run execute at @e[tag=!wicked,type=!#dontharm,distance=..3,sort=nearest] run particle soul_fire_flame ^ ^ ^ 0.2 -1 0.2 0.1 200 force

#Give fire + magic damage
execute as @e[tag=ball] at @s run execute at @e[tag=!wicked,type=!#dontharm,distance=..3,sort=nearest] run data merge entity @e[tag=!wicked,type=!#dontharm,distance=..3,sort=nearest,limit=1] {Fire:56s}
execute as @e[tag=ball] at @s run execute as @e[tag=!wicked,type=!#dontharm,distance=..3,sort=nearest] run damage @s 8 minecraft:magic by @p[tag=wicked]

#Particle Management
execute as @e[tag=ball] at @s run particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.3 0.3 0.3 0.001 50 force
execute as @e[tag=ball] at @s run particle soul_fire_flame ^ ^ ^ 0.3 0.3 0.3 0.001 50 force



###########################
# FLYING SPELL
###########################
execute as @a[tag=wicked,limit=1,scores={typevol=0},nbt={SelectedItem:{id:"minecraft:feather",tag:{display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}}}] at @s run function broom
execute as @a[tag=wicked,limit=1,scores={typevol=0},nbt=!{SelectedItem:{id:"minecraft:feather",tag:{display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}}}] at @s run clear @s command_block{HideFlags:3,Unbreakable:1,display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}



##########################
# SPELLS
##########################
# Relinquishing Your Magic
#execute at @e[scores={spell=6},tag=wicked,limit=1] run function relinq

# Locator Spell
execute at @a[scores={spell=2},tag=wicked,limit=1] run function locat

# Protection Spell
execute at @a[scores={spell=1},tag=wicked,limit=1] run function protect

# HealingSpell
execute at @a[scores={spell=3},tag=wicked,limit=1] run function heal

# Dispel
execute at @a[scores={spell=68},tag=wicked,limit=1] run function potionclear

# coven Spell
execute at @a[scores={spell=92},tag=wicked,limit=1] run function witcher

# Aura-Explosion
execute at @a[scores={spell=20},tag=wicked,limit=1] run function aura

# Astral Projection Spell
execute at @a[scores={spell=38},tag=wicked,limit=1] run function astralp
execute at @e[tag=PAJ] run function cauldron/alchemymod_v_t
execute at @e[tag=PAJ] run particle happy_villager ^ ^1.5 ^ 1 1 1 0.001 200 force
execute at @e[tag=PAJ] if entity @e[tag=!wicked,tag=!PAJ,distance=..2] run function finastra

#Ghost walk
execute at @a[scores={spell=600},tag=wicked,limit=1] run function ghost_walk



###########################
# SPELLBOOK
###########################
execute as @e[tag=wicked,scores={sneak=1..},nbt={SelectedItem:{id:"minecraft:written_book",tag:{title:"§2The Grimmerie"}}}] at @s run data merge entity @e[type=item,limit=1,sort=nearest,distance=..5] {Item:{tag:{Unbreakable:1}}}


###########################
# COVEN OF WITCH
###########################
execute as @a[tag=wicked,limit=1] at @s if entity @e[type=witch,distance=..20] run function witch

###########################
# ANTI LAG & BUG
###########################
execute as @a[tag=wicked,limit=1] at @s if entity @e[tag=ball] run kill @e[tag=ball,distance=50..]
execute as @a[tag=wicked,limit=1] at @s if entity @e[tag=telpe] run kill @e[tag=telpe,distance=50..]
execute as @e[tag=ball] at @s if block ~ ~ ~ water run kill @e[tag=ball]


scoreboard players set @a[scores={select=0}] broom 0
scoreboard players set @a[tag=wicked] sneak 0
scoreboard players set @a[tag=wicked,limit=1] click 0
scoreboard players set @a[tag=wicked,limit=1] click3 0


##########################
# MAGIC WALL
##########################

# CREATION
execute at @a[scores={spell=4,magie=15..},tag=wicked] run summon item ~ ~ ~ {Item:{id:"minecraft:slime_spawn_egg",Count:10b,tag:{display:{Name:"{\"text\":\"§2Magic Wall\"}"},EntityTag:{Size:0,wasOnGround:1,NoAI:1,Silent:1,Tags:["wall2"]},Enchantments:[{}]}}}
execute at @a[scores={spell=4,magie=..14},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}
execute as @e[tag=wall2,type=slime] at @s run summon marker ~ ~ ~ {Tags:["wall"],NoGravity:1b,Small:1,Invisible:1,NoBasePlate:1}
execute as @e[tag=wall2,type=slime] at @s run kill @e[tag=wall2,type=slime]
execute as @e[tag=wall2,type=slime] at @s run summon marker ~ ~ ~ {Invisible:1b,Tags:["rmvitm"]}
execute as @e[tag=rmvitm] at @s run kill @e[tag=wall2,distance=..2]
execute as @e[tag=rmvitm] at @s run kill @e[type=item,distance=..2]
execute as @e[tag=rmvitm] at @s run kill @e[tag=rmvitm,distance=..2]
execute as @e[tag=wall] at @s if block ~ ~ ~ air run fill ~ ~ ~ ~ ~ ~ lime_stained_glass replace air
execute as @e[tag=wall] at @s if block ~ ~ ~ emerald_block run fill ~ ~ ~ ~ ~ ~ lime_stained_glass replace emerald_block
execute as @e[tag=wall] at @s if block ~ ~ ~ cave_air run fill ~ ~ ~ ~ ~ ~ lime_stained_glass replace cave_air
execute as @e[tag=wall] at @s if block ~ ~ ~ water run fill ~ ~ ~ ~ ~ ~ lime_stained_glass replace water
execute as @e[tag=wall] at @s run kill @e[nbt={Item:{id:"minecraft:slime_ball"}},distance=..2]
execute at @a[scores={spell=4,magie=..14},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}
execute as @a[scores={spell=4,magie=15..},tag=wicked] run scoreboard players remove @s magie 15
execute as @a[scores={spell=4},tag=wicked] run scoreboard players set @s spell 0


# DESTRUCTION
execute at @a[scores={spell=5,magie=5..},tag=wicked] run summon item ~ ~ ~ {Item:{id:"minecraft:slime_spawn_egg",Count:10b,tag:{display:{Name:"{\"text\":\"§2Destroy Magic Wall\"}"},EntityTag:{Size:0,wasOnGround:1,NoAI:1,Silent:1,Tags:["dwall2"]},Enchantments:[{}]}}}
execute at @a[scores={spell=5,magie=..4},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}
execute as @a[scores={spell=5,magie=15..},tag=wicked] run scoreboard players remove @s magie 15
execute as @a[scores={spell=5},tag=wicked] run scoreboard players set @s spell 0
execute as @e[tag=dwall2,type=slime] at @s run kill @e[tag=wall,distance=..2]
execute as @e[tag=dwall2,type=slime] at @s run summon marker ~ ~ ~ {Invisible:1b,Tags:["rmvitm"]}
execute as @e[tag=rmvitm] at @s run kill @e[tag=dwall2,distance=..2]
execute as @e[tag=rmvitm] at @s run kill @e[type=item,distance=..2]
execute as @e[tag=rmvitm] at @s run kill @e[tag=rmvitm,distance=..2]


# CROSSING
execute at @e[tag=wall] if entity @e[distance=..2,tag=wicked,nbt={SelectedItem:{id:"minecraft:written_book",tag:{title:"§2The Grimmerie"}}}] run fill ~ ~ ~ ~ ~ ~ air replace lime_stained_glass
execute at @e[tag=wall] if entity @e[distance=..2,tag=wicked,nbt={SelectedItem:{id:"minecraft:totem_of_undying",tag:{HideFlags:3,display:{Name:"{\"text\":\"§2Wicked Witch's Pendant\"}"},ench:[{id:34,lvl:211}]}}}] run fill ~ ~ ~ ~ ~ ~ air replace lime_stained_glass



###########################
# CLEANER
###########################
execute as @a[tag=actif] run function cleaner 



###########################
# CLEAR FLOOR
###########################
execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{id:"minecraft:feather",Count:1b,tag:{HideFlags:3,CustomModelData:10140015,Unbreakable:1,display:{Name:"{\"text\":\"§2Magic Broom\"}"},ench:[{lvl:211,id:34}]}}}]
execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§2Poofing\"}"},Enchantments:[{}]}}}]
execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{HideFlags:3,CustomModelData:10140002,Unbreakable:1,display:{Name:"{\"text\":\"§2Fireball\"}"},Enchantments:[{}]}},OnGround:1b}]
execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§2Immobilization\"}"},Enchantments:[{}]}}}]
execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:3,CustomModelData:10140003,Unbreakable:1b,display:{Name:"{\"text\":\"§2Scepter\"}"},Enchantments:[{id:"minecraft:sharpness",lvl:8s},{id:"minecraft:smite",lvl:8s},{id:"minecraft:bane_of_arthropods",lvl:8s}],AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:2,UUIDLeast:80949,UUIDMost:496823},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:12,Operation:1,UUIDLeast:690100,UUIDMost:811832}]}}}]

execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{id:"minecraft:feather",Count:1b,tag:{HideFlags:3,CustomModelData:10140015,Unbreakable:1,display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}}}]


execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{id:"minecraft:command_block",Count:1b,tag:{HideFlags:3,Unbreakable:1,display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}}}]
execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{id:"minecraft:repeating_command_block",Count:1b,tag:{HideFlags:3,Unbreakable:1,display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}}}]

execute as @a[tag=wicked,limit=1] at @s run kill @e[distance=..10,nbt={Item:{id:"minecraft:barrier",Count:1b,tag:{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}}}]

#POOFING
execute if score @a[tag=wicked,limit=1,scores={select=1}] magie matches 0..9 if entity @a[tag=wicked,limit=1,nbt=!{Inventory:[{Slot:2b,id:"carrot_on_a_stick",tag:{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§2Poofing\"}"},Enchantments:[{}]}}]}] run item replace entity @a[tag=l20,tag=wicked,limit=1,scores={select=1,magie=0..9}] hotbar.2 with barrier{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}

#IMMOBILIZATION
execute if score @a[tag=wicked,limit=1,scores={select=1}] magie matches 0..9 if entity @a[tag=wicked,limit=1,nbt=!{Inventory:[{Slot:3b,id:"carrot_on_a_stick",tag:{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§2Immobilization\"}"},Enchantments:[{}]}}]}] run item replace entity @a[tag=l30,tag=wicked,limit=1,scores={select=1,magie=0..9}] hotbar.3 with barrier{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}
#FIREBALL
execute if score @a[tag=wicked,limit=1,scores={select=1}] magie matches 0..4 if entity @a[tag=wicked,limit=1,nbt=!{Inventory:[{Slot:1b,id:"snowball",tag:{HideFlags:3,CustomModelData:10140002,Unbreakable:1,display:{Name:"{\"text\":\"§2Fireball\"}"},Enchantments:[{}]}}]}] run item replace entity @a[tag=l10,tag=wicked,limit=1,scores={select=1,magie=0..4}] hotbar.1 with barrier{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}



#POOFING
item replace entity @a[tag=!l20,tag=wicked,limit=1,scores={select=1}] hotbar.2 with barrier{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}

#IMMOBILIZATION
item replace entity @a[tag=!l30,tag=wicked,limit=1,scores={select=1}] hotbar.3 with barrier{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}

#FIREBALL
item replace entity @a[tag=!l10,tag=wicked,limit=1,scores={select=1}] hotbar.1 with barrier{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}

#BROOM
item replace entity @a[tag=!l15,tag=wicked,limit=1,scores={select=1}] hotbar.4 with barrier{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}
