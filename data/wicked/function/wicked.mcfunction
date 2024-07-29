###########################
#WICKED WITCH 
#by Antogone
#Versions 2024
###########################


###########################
# BONUS 
###########################
effect give @s saturation infinite 0 true
effect give @s jump_boost infinite 1 true
effect give @s[scores={broo=1..}] jump_boost 5 2 true

effect give @e[tag=salem,limit=1] slow_falling infinite 0 true


###########################
# AFFICHAGE MAGIE + RECHARGE
###########################


execute if entity @s[tag=light_purple] run title @s actionbar ["",{"text":"Energie Magique :","color":"light_purple"},{"text":" ","color":"#00CE00"},{"score":{"name":"@s","objective":"magie"},"color":"#00CE00"}]

execute if entity @s[tag=dark_purple] run title @s actionbar ["",{"text":"Energie Magique :","color":"dark_purple"},{"text":" ","color":"#00CE00"},{"score":{"name":"@s","objective":"magie"},"color":"#00CE00"}]

execute if entity @s[tag=dark_gray] run title @s actionbar ["",{"text":"Energie Magique :","color":"dark_gray"},{"text":" ","color":"#00CE00"},{"score":{"name":"@s","objective":"magie"},"color":"#00CE00"}]

execute if entity @s[tag=black] run title @s actionbar ["",{"text":"Energie Magique :","color":"black"},{"text":" ","color":"#00CE00"},{"score":{"name":"@s","objective":"magie"},"color":"#00CE00"}]

execute if entity @s[tag=dark_green] run title @s actionbar ["",{"text":"Energie Magique :","color":"dark_green"},{"text":" ","color":"#00CE00"},{"score":{"name":"@s","objective":"magie"},"color":"#00CE00"}]

########################
# MODE MAGIE ACTIF
###########################


execute as @s[scores={select=1},predicate=!wicked:pendant_offhand] run function wicked:item_storage/normal
execute as @s[scores={select=0},predicate=wicked:pendant_offhand] run function wicked:item_storage/don

execute as @s[predicate=wicked:pendant_offhand] run scoreboard players set @s select 1
execute as @s[predicate=!wicked:pendant_offhand] run scoreboard players set @s select 0





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

item replace entity @s[scores={select=1,magie=5..}] hotbar.0 with carrot_on_a_stick[unbreakable={},enchantment_glint_override=1b,custom_name='{"text":"§2Magic Blast"}',lore=['{"text":"§2Magic Cost : 5"}'],custom_model_data=10140002,custom_data={scepter:1b}]

# #POOFING
item replace entity @s[tag=l20,scores={select=1,magie=10..}] hotbar.1 with carrot_on_a_stick[unbreakable={},enchantment_glint_override=1b,custom_name='{"text":"§2Poofing"}',lore=['{"text":"§2Magic Cost : 10"}'],custom_model_data=10140001,custom_data={poofing:1b}]

# #IMMOBILIZATION
item replace entity @s[tag=l30,scores={select=1,magie=15..}] hotbar.2 with carrot_on_a_stick[unbreakable={},enchantment_glint_override=1b,custom_name='{"text":"§2Immobilization"}',lore=['{"text":"§2Magic Cost : 15"}'],custom_model_data=10140001,custom_data={immo:1b}]


# #FLYING SPELL
item replace entity @s[tag=l15,tag=broom_shield,scores={select=1,magie=0..}] hotbar.3 with feather[unbreakable={},enchantment_glint_override=1b,item_name='{"color":"dark_green","text":"Witch\'s broom"}',custom_model_data=10140015,custom_data={broom:1b},attribute_modifiers={modifiers:[{type:"generic.attack_damage",id:"attack_damage",amount:8,operation:"add_value"}],show_in_tooltip:false}]



item replace entity @s[tag=l15,tag=broom_fly,scores={select=1,magie=0..}] hotbar.3 with feather[unbreakable={},enchantment_glint_override=1b,item_name='{"color":"dark_green","text":"Witch\'s broom"}',attribute_modifiers={modifiers:[{type:"generic.attack_damage",id:"attack_damage",amount:8,operation:"add_value"}],show_in_tooltip:false},custom_model_data=10140016,custom_data={broom:2b}]






###########################
# POOFING
###########################

execute as @s[scores={magie=10..,click=1..},predicate=wicked:select_poofing,predicate=!wicked:is_sneaking] at @s run function wicked:poofing/cast
execute as @s[scores={magie=10..,click=1..},predicate=wicked:select_poofing,predicate=wicked:is_sneaking] at @s run function wicked:poofing/cast2



###########################
# SCEPTER
###########################
execute as @s[scores={magie=4..,click=1..},predicate=wicked:select_scepter] at @s run function wicked:wicked_ray/cast




###########################
# Clear Scepter
########################### 
execute as @s at @s run kill @e[distance=..10,nbt={Item:{components:{"minecraft:custom_data":{scepter:1b}}}}]
execute as @s[scores={select=0}] run clear @s carrot_on_a_stick[custom_data={scepter:1b}]


###########################
# BRO SCORE
########################### 
execute as @s[tag=l40,scores={drop=1,select=1},predicate=wicked:select_broom_2] run function wicked:broom/broom_change_shield
execute as @s[tag=l40,scores={drop=1,select=1},predicate=wicked:select_broom] run function wicked:broom/broom_change_fly

scoreboard players set @s[scores={drop=1..}] drop 0



###########################
# Witch Leveling up
###########################
            #     - 1) Witch  (Light Purple)
            #     - 2) Mystic Witch (dark purple)
            #     - 3) Occult Witch (dark gray)
            #     - 4) Dark Witch   (black)
            #     - 5) Wicked Witch (Dark green)

execute as @s[tag=light_purple,scores={killwitch=10..}] run function wicked:witch_update/mystic
execute as @s[tag=dark_purple,scores={killwitch=10..}] run function wicked:witch_update/occult
execute as @s[tag=dark_gray,scores={killwitch=10..}] run function wicked:witch_update/dark
execute as @s[tag=black,scores={killwitch=10..}] run function wicked:witch_update/wicked


execute as @s[tag=dark_purple,predicate=wicked:select_witch] run function wicked:spellbook/witch_to_mystic
execute as @s[tag=dark_gray,predicate=wicked:select_mystic] run function wicked:spellbook/mystic_to_occult
execute as @s[tag=black,predicate=wicked:select_occult] run function wicked:spellbook/occult_to_dark
execute as @s[tag=dark_green,predicate=wicked:select_dark] run function wicked:spellbook/dark_to_wicked



###########################
# SCEPTER SHIELD
###########################

##### DEVIATION
execute as @s[tag=l40,scores={select=1},predicate=wicked:is_sneaking,predicate=wicked:select_broom] at @s run kill @e[type=#projectiles,sort=nearest,distance=..3]
effect give @s[tag=l40,scores={select=1},predicate=wicked:is_sneaking,predicate=wicked:select_broom] resistance 2 255 true

###### PARTICLE 
execute at @s[tag=l40,scores={select=1},predicate=wicked:is_sneaking,predicate=wicked:select_broom] positioned ~ ~0.1 ~ run function wicked:cauldron/particle/alchemymod_shield



###########################
# IMMOBILIZATION
###########################
execute as @s[tag=!fixa,scores={magie=15..,click=1..},predicate=wicked:select_immo] at @s positioned ^ ^ ^6 run function wicked:immobilization/castfix



###########################
# FLYING SPELL
###########################
scoreboard players set @s[gamemode=!spectator,predicate=wicked:select_broom_2] broo 2
scoreboard players set @s[gamemode=!spectator,predicate=wicked:select_broom_2,predicate=wicked:is_sneaking] broo 1
scoreboard players set @s[scores={broo=1..},predicate=!wicked:select_broom_2] broo 0
clear @s[scores={broo=0},predicate=!wicked:select_broom_2] command_block[custom_model_data=14120001]



##########################
# SPELLS
##########################

# Locator Spell 10
execute as @s[scores={spell=2}] at @s run function wicked:grimmerie/locator/locat

# Aura-Explosion 15
execute as @s[scores={spell=20}] at @s run function wicked:grimmerie/aura


# Dispel 5
execute as @s[scores={spell=68}] at @s run function wicked:grimmerie/potionclear

# Ghost walk 30
execute as @s[scores={spell=600}] at @s run function wicked:grimmerie/ghost_walk/ghost_walk

# Protection Spell 40
execute as @s[scores={spell=1}] at @s run function wicked:grimmerie/protect

# HealingSpell 30
execute as @s[scores={spell=3}] at @s run function wicked:grimmerie/heal



# Astral Projection Spell 30
execute as @a[scores={spell=38},tag=wicked,limit=1] at @s run function wicked:grimmerie/astral_projection/astralp

# execute at @e[tag=PAJ] run function wicked:cauldron/particle/alchemymod_v_t
# execute at @e[tag=PAJ] run particle happy_villager ^ ^ ^ 0.5 1 0.5 0.001 10 force


# Set recall point
execute as @s[scores={spell=24}] at @s run function wicked:grimmerie/recall/set_recall

# recall use
execute as @s[scores={spell=25}] at @s run function wicked:grimmerie/recall/tel_recall



# Size Spell - Normal
execute as @s[scores={spell=44}] at @s run function wicked:grimmerie/size_spell/normal

# Size Spell - Shrink
execute as @s[scores={spell=46}] at @s run function wicked:grimmerie/size_spell/shrink

# Size Spell - giant
execute as @s[scores={spell=45}] at @s run function wicked:grimmerie/size_spell/giant



# Size curse - Normal
execute as @s[scores={spell=48}] at @s run function wicked:grimmerie/size_curse/normal

# Size curse - Shrink
execute as @s[scores={spell=47}] at @s run function wicked:grimmerie/size_curse/shrink

# Size curse- giant
execute as @s[scores={spell=49}] at @s run function wicked:grimmerie/size_curse/giant


#Heart Ripping
execute as @s[scores={spell=50}] at @s run function wicked:heart_ripping/give_hr




###########################
# SPELLBOOK
###########################
execute as @s[predicate=wicked:is_sneaking,predicate=wicked:select_grimmerie] at @s run data merge entity @e[type=item,limit=1,sort=nearest,distance=..5] {Item:{components:{"minecraft:unbreakable":{}}}}








###########################
# CLEAR FLOOR
###########################
execute at @s run kill @e[distance=..10,nbt={Item:{components:{"minecraft:custom_data":{broom:1b}}}}]
execute at @s run kill @e[distance=..10,nbt={Item:{components:{"minecraft:custom_data":{broom:2b}}}}]

execute at @s run kill @e[distance=..10,nbt={Item:{components:{"minecraft:custom_data":{poofing:1b}}}}]
execute at @s run kill @e[distance=..10,nbt={Item:{components:{"minecraft:custom_data":{immo:1b}}}}]
execute at @s run kill @e[distance=..10,nbt={Item:{components:{"minecraft:custom_data":{scepter:1b}}}}]
execute at @s run kill @e[distance=..10,nbt={Item:{components:{"minecraft:custom_data":{reloading:1b}}}}]


execute at @s run kill @e[distance=..10,nbt={Item:{tag:{fireball:1b,OnGround:1b}}}]

execute at @s run kill @e[distance=..10,nbt={Item:{components:{"minecraft:custom_model_data":14120001}}}]



#### REALOADING 
clear @s red_dye[custom_model_data=10140002]

# #POOFING
execute if score @s[scores={select=1}] magie matches 0..9 run item replace entity @s[tag=l20,scores={select=1,magie=0..9}] hotbar.1 with red_dye[unbreakable={},enchantment_glint_override=1b,custom_name='{"text":"§cReloading"}',custom_model_data=10140002,custom_data={reloading:1b}]

# #IMMOBILIZATION
execute if score @s[scores={select=1}] magie matches 0..14 run item replace entity @s[tag=l30,scores={select=1,magie=0..14}] hotbar.2 with red_dye[unbreakable={},enchantment_glint_override=1b,custom_name='{"text":"§cReloading"}',custom_model_data=10140002,custom_data={reloading:1b}]


# #wicked ray
execute if score @s[scores={select=1}] magie matches 0..4 run item replace entity @s[scores={select=1,magie=0..4}] hotbar.0 with red_dye[unbreakable={},enchantment_glint_override=1b,custom_name='{"text":"§cReloading"}',custom_model_data=10140002,custom_data={reloading:1b}]



# #### Verrouillage des slots

# #POOFING
item replace entity @s[tag=!l20,scores={select=1}] hotbar.1 with red_dye[unbreakable={},enchantment_glint_override=1b,custom_name='{"text":"§cReloading"}',custom_model_data=10140001,custom_data={reloading:1b}]

# #IMMOBILIZATION
item replace entity @s[tag=!l30,scores={select=1}] hotbar.2 with red_dye[unbreakable={},enchantment_glint_override=1b,custom_name='{"text":"§cReloading"}',custom_model_data=10140001,custom_data={reloading:1b}]

# #BROOM
item replace entity @s[tag=!l15,scores={select=1}] hotbar.3 with red_dye[unbreakable={},enchantment_glint_override=1b,custom_name='{"text":"§cReloading"}',custom_model_data=10140001,custom_data={reloading:1b}]




###########################
# MAGIC MIRROR 
###########################

execute as @a[scores={click=1..},predicate=wicked:select_mirror_1] at @s run function wicked:magic_mirror/set_mirror_first
execute as @a[scores={click=1..},predicate=wicked:select_mirror_2] at @s run function wicked:magic_mirror/set_mirror_second


#### HEART RIPPING
############################# WIP

#Restoration
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{heart:1b}}}}] at @s run function wicked:heart_ripping/set_restore

execute as @a[scores={click=1..},predicate=wicked:select_heartrip] at @s run function wicked:heart_ripping/take_heart
# execute as @a[predicate=wicked:heart_inv] at @s run function wicked:heart_ripping/set_immo



###########################
# ANTI LAG & BUG
###########################
scoreboard players set @s[scores={select=0}] broom 0
scoreboard players set @s click 0
scoreboard players set @s click3 0
scoreboard players set @s spell 0



## Magic Cauldron [WIP]
# execute as @e[type=minecraft:interaction,tag=chunklock] at @s run function wicked:magic_cauldron/tick_chunk_interactions
