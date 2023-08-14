##
 # set_protection.mcfunction
 # 
 #
 # Created by Bomerie
##
summon armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["protection","c_spell"],CustomName:'{"text":"Protection Spell","color":"dark_green","bold":true,"italic":true}'}
execute if block ~ ~ ~ water_cauldron[level=1] run setblock ~ ~ ~ cauldron
execute if block ~ ~ ~ water_cauldron[level=2] run setblock ~ ~ ~ water_cauldron[level=1]
execute if block ~ ~ ~ water_cauldron[level=3] run setblock ~ ~ ~ water_cauldron[level=2]
kill @e[type=item,distance=..2]