##
 # cauldron.mcfunction
 # 
 #
 # Created by Antogone
##

############ PROTECTION 
execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/set_protection


# ##### Protection

# ## X positif - Z Positif
# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~ run execute as @e[tag=wicked,dx=13,dz=2,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~2 run execute as @e[tag=wicked,dx=15,dz=3,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~6 run execute as @e[tag=wicked,dx=11,dz=2,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~9 run execute as @e[tag=wicked,dx=9,dz=1,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~11 run execute as @e[tag=wicked,dx=7,dz=1,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~ ~ ~11 run execute as @e[tag=wicked,dx=5,dz=2,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~2 ~ ~14 run execute as @e[tag=wicked,dx=2,dz=0,dy=15] run function wicked:cauldron/effect_protect


# ## X positif - Z Negatif

# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~ run execute as @e[tag=wicked,dx=13,dz=-5,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~-5 run execute as @e[tag=wicked,dx=12,dz=-6,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~-11 run execute as @e[tag=wicked,dx=6,dz=-2,dy=15] run function wicked:cauldron/effect_protect

# ## X Negatif - Z Negatif

# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~ run execute as @e[tag=wicked,dx=-8,dz=-11,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~-11 run execute as @e[tag=wicked,dx=-7,dz=-2,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-8 ~ ~ run execute as @e[tag=wicked,dx=-4,dz=-9,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-12 ~ ~ run execute as @e[tag=wicked,dx=-1,dz=-7,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-13 ~ ~ run execute as @e[tag=wicked,dx=-1,dz=-5,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-14 ~ ~-2 run execute as @e[tag=wicked,dx=-2,dz=-3,dy=15] run function wicked:cauldron/effect_protect



# ## X Negatif - Z positif

# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~ run execute as @e[tag=wicked,dx=-6,dz=13,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-7 ~ ~ run execute as @e[tag=wicked,dx=-1,dz=11,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-8 ~ ~ run execute as @e[tag=wicked,dx=-4,dz=11,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-12 ~ ~ run execute as @e[tag=wicked,dx=-2,dz=6,dy=15] run function wicked:cauldron/effect_protect


# ##### Ennemies

# ## X positif - Z Positif
# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~ run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=13,dz=2,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~2 run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=15,dz=3,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~6 run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=11,dz=2,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~9 run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=9,dz=1,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~11 run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=7,dz=1,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~ ~ ~11 run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=5,dz=2,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~2 ~ ~14 run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=2,dz=0,dy=15] run function wicked:cauldron/effect_protect


# ## X positif - Z Negatif

# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~ run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=13,dz=-5,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~-5 run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=12,dz=-6,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~-11 run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=6,dz=-2,dy=15] run function wicked:cauldron/effect_protect

# ## X Negatif - Z Negatif

# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~ run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-8,dz=-11,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~-11 run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-7,dz=-2,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-8 ~ ~ run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-4,dz=-9,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-12 ~ ~ run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-1,dz=-7,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-13 ~ ~ run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-1,dz=-5,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-14 ~ ~-2 run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-2,dz=-3,dy=15] run function wicked:cauldron/effect_protect



# ## X Negatif - Z positif

# execute as @e[tag=protection,tag=!large] at @s positioned ~-1 ~ ~ run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-6,dz=13,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-7 ~ ~ run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-1,dz=11,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-8 ~ ~ run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-4,dz=11,dy=15] run function wicked:cauldron/effect_protect
# execute as @e[tag=protection,tag=!large] at @s positioned ~-12 ~ ~ run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-2,dz=6,dy=15] run function wicked:cauldron/effect_protect



execute as @e[tag=protection,tag=!large] at @s run execute as @e[tag=wicked,dx=14,dz=14,dy=15] run function wicked:cauldron/effect_protect
execute as @e[tag=protection,tag=!large] at @s run execute as @e[tag=wicked,dx=-14,dz=14,dy=15] run function wicked:cauldron/effect_protect
execute as @e[tag=protection,tag=!large] at @s run execute as @e[tag=wicked,dx=-14,dz=-14,dy=15] run function wicked:cauldron/effect_protect 
execute as @e[tag=protection,tag=!large] at @s run execute as @e[tag=wicked,dx=14,dz=-14,dy=15] run function wicked:cauldron/effect_protect

execute as @e[tag=protection,tag=!large] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=14,dz=14,dy=15] run function wicked:cauldron/effect_protect
execute as @e[tag=protection,tag=!large] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-14,dz=14,dy=15] run function wicked:cauldron/effect_protect
execute as @e[tag=protection,tag=!large] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-14,dz=-14,dy=15] run function wicked:cauldron/effect_protect 
execute as @e[tag=protection,tag=!large] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=14,dz=-14,dy=15] run function wicked:cauldron/effect_protect




execute as @e[tag=protection,tag=large] at @s run execute as @e[tag=wicked,dx=27,dz=27,dy=28] run function wicked:cauldron/effect_protect
execute as @e[tag=protection,tag=large] at @s run execute as @e[tag=wicked,dx=-27,dz=27,dy=28] run function wicked:cauldron/effect_protect
execute as @e[tag=protection,tag=large] at @s run execute as @e[tag=wicked,dx=-27,dz=-27,dy=28] run function wicked:cauldron/effect_protect 
execute as @e[tag=protection,tag=large] at @s run execute as @e[tag=wicked,dx=27,dz=-27,dy=28] run function wicked:cauldron/effect_protect

execute as @e[tag=protection,tag=large] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=27,dz=27,dy=28] run function wicked:cauldron/effect_protect
execute as @e[tag=protection,tag=large] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-27,dz=27,dy=28] run function wicked:cauldron/effect_protect
execute as @e[tag=protection,tag=large] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-27,dz=-27,dy=28] run function wicked:cauldron/effect_protect 
execute as @e[tag=protection,tag=large] at @s run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=27,dz=-27,dy=28] run function wicked:cauldron/effect_protect




############ NO MORE MOBS
execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:wither_rose",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/set_nomobs


execute as @e[tag=no_mobs,tag=!large] at @s run kill @e[type=#minecraft:hostile,dx=14,dz=14,dy=15]
execute as @e[tag=no_mobs,tag=!large] at @s run kill @e[type=#minecraft:hostile,dx=-14,dz=14,dy=15]
execute as @e[tag=no_mobs,tag=!large] at @s run kill @e[type=#minecraft:hostile,dx=-14,dz=-14,dy=15]
execute as @e[tag=no_mobs,tag=!large] at @s run kill @e[type=#minecraft:hostile,dx=14,dz=-14,dy=15]

execute as @e[tag=no_mobs,tag=large] at @s run kill @e[type=#minecraft:hostile,dx=27,dz=27,dy=28]
execute as @e[tag=no_mobs,tag=large] at @s run kill @e[type=#minecraft:hostile,dx=-27,dz=27,dy=28]
execute as @e[tag=no_mobs,tag=large] at @s run kill @e[type=#minecraft:hostile,dx=-27,dz=-27,dy=28]
execute as @e[tag=no_mobs,tag=large] at @s run kill @e[type=#minecraft:hostile,dx=27,dz=-27,dy=28]


# ## X positif - Z Positif
# execute as @e[tag=no_mobs,tag=!large] at @s positioned ~-1 ~ ~ run kill @e[type=#minecraft:hostile,dx=13,dz=2,dy=15]
# execute as @e[tag=no_mobs,tag=!large] at @s positioned ~-1 ~ ~2 run kill @e[type=#minecraft:hostile,dx=15,dz=3,dy=15]
# execute as @e[tag=no_mobs,tag=!large] at @s positioned ~-1 ~ ~6 run kill @e[type=#minecraft:hostile,dx=11,dz=2,dy=15]
# execute as @e[tag=no_mobs,tag=!large] at @s positioned ~-1 ~ ~9 run kill @e[type=#minecraft:hostile,dx=9,dz=1,dy=15]
# execute as @e[tag=no_mobs,tag=!large] at @s positioned ~-1 ~ ~11 run kill @e[type=#minecraft:hostile,dx=7,dz=1,dy=15]
# execute as @e[tag=no_mobs,tag=!large] at @s positioned ~ ~ ~11 run kill @e[type=#minecraft:hostile,dx=5,dz=2,dy=15]
# execute as @e[tag=no_mobs,tag=!large] at @s positioned ~2 ~ ~14 run kill @e[type=#minecraft:hostile,dx=2,dz=0,dy=15]


# ## X positif - Z Negatif

# execute as @e[tag=no_mobs,tag=!large] at @s positioned ~-1 ~ ~ run kill @e[type=#minecraft:hostile,dx=13,dz=-5,dy=15]
# execute as @e[tag=no_mobs,tag=!large] at @s positioned ~-1 ~ ~-5 run kill @e[type=#minecraft:hostile,dx=12,dz=-6,dy=15]
# execute as @e[tag=no_mobs,tag=!large] at @s positioned ~-1 ~ ~-11 run kill @e[type=#minecraft:hostile,dx=6,dz=-2,dy=15]

# ## X Negatif - Z Negatif

# execute as @e[tag=no_mobs,tag=!large] at @s positioned ~-1 ~ ~ run kill @e[type=#minecraft:hostile,dx=-8,dz=-11,dy=15]
# execute as @e[tag=no_mobs,tag=!large] at @s positioned ~-1 ~ ~-11 run kill @e[type=#minecraft:hostile,dx=-7,dz=-2,dy=15]
# execute as @e[tag=no_mobs,tag=!large] at @s positioned ~-8 ~ ~ run kill @e[type=#minecraft:hostile,dx=-4,dz=-9,dy=15]
# execute as @e[tag=no_mobs,tag=!large] at @s positioned ~-12 ~ ~ run kill @e[type=#minecraft:hostile,dx=-1,dz=-7,dy=15]
# execute as @e[tag=no_mobs,tag=!large] at @s positioned ~-13 ~ ~ run kill @e[type=#minecraft:hostile,dx=-1,dz=-5,dy=15]
# execute as @e[tag=no_mobs,tag=!large] at @s positioned ~-14 ~ ~-2 run kill @e[type=#minecraft:hostile,dx=-2,dz=-3,dy=15]



# ## X Negatif - Z positif

# execute as @e[tag=no_mobs,tag=!large] at @s positioned ~-1 ~ ~ run kill @e[type=#minecraft:hostile,dx=-6,dz=13,dy=15]
# execute as @e[tag=no_mobs,tag=!large] at @s positioned ~-7 ~ ~ run kill @e[type=#minecraft:hostile,dx=-1,dz=11,dy=15]
# execute as @e[tag=no_mobs,tag=!large] at @s positioned ~-8 ~ ~ run kill @e[type=#minecraft:hostile,dx=-4,dz=11,dy=15]
# execute as @e[tag=no_mobs,tag=!large] at @s positioned ~-12 ~ ~ run kill @e[type=#minecraft:hostile,dx=-2,dz=6,dy=15]




############ MALEDICTION 
execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:2b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:10b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:2b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple",Count:2b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:wither_rose",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/set_malefice

execute as @e[tag=malefice,tag=!large] at @s run execute as @e[tag=!wicked,tag=!salem,type=!#minecraft:dontharm,dx=14,dz=14,dy=14] run function wicked:cauldron/effect_malefice
execute as @e[tag=malefice,tag=!large] at @s run execute as @e[tag=!wicked,tag=!salem,type=!#minecraft:dontharm,dx=-14,dz=14,dy=14] run function wicked:cauldron/effect_malefice
execute as @e[tag=malefice,tag=!large] at @s run execute as @e[tag=!wicked,tag=!salem,type=!#minecraft:dontharm,dx=-14,dz=-14,dy=14] run function wicked:cauldron/effect_malefice
execute as @e[tag=malefice,tag=!large] at @s run execute as @e[tag=!wicked,tag=!salem,type=!#minecraft:dontharm,dx=14,dz=-14,dy=14] run function wicked:cauldron/effect_malefice


execute as @e[tag=malefice,tag=large] at @s run execute as @e[tag=!wicked,tag=!salem,type=!#minecraft:dontharm,dx=27,dz=27,dy=28] run function wicked:cauldron/effect_malefice
execute as @e[tag=malefice,tag=large] at @s run execute as @e[tag=!wicked,tag=!salem,type=!#minecraft:dontharm,dx=-27,dz=27,dy=28] run function wicked:cauldron/effect_malefice
execute as @e[tag=malefice,tag=large] at @s run execute as @e[tag=!wicked,tag=!salem,type=!#minecraft:dontharm,dx=-27,dz=-27,dy=28] run function wicked:cauldron/effect_malefice
execute as @e[tag=malefice,tag=large] at @s run execute as @e[tag=!wicked,tag=!salem,type=!#minecraft:dontharm,dx=27,dz=-27,dy=28] run function wicked:cauldron/effect_malefice


# ## X positif - Z Positif
# execute as @e[tag=malefice,tag=!large] at @s positioned ~-1 ~ ~ run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=13,dz=2,dy=15] run function wicked:cauldron/effect_malefice
# execute as @e[tag=malefice,tag=!large] at @s positioned ~-1 ~ ~2 run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=15,dz=3,dy=15] run function wicked:cauldron/effect_malefice
# execute as @e[tag=malefice,tag=!large] at @s positioned ~-1 ~ ~6 run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=11,dz=2,dy=15] run function wicked:cauldron/effect_malefice
# execute as @e[tag=malefice,tag=!large] at @s positioned ~-1 ~ ~9 run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=9,dz=1,dy=15] run function wicked:cauldron/effect_malefice
# execute as @e[tag=malefice,tag=!large] at @s positioned ~-1 ~ ~11 run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=7,dz=1,dy=15] run function wicked:cauldron/effect_malefice
# execute as @e[tag=malefice,tag=!large] at @s positioned ~ ~ ~11 run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=5,dz=2,dy=15] run function wicked:cauldron/effect_malefice
# execute as @e[tag=malefice,tag=!large] at @s positioned ~2 ~ ~14 run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=2,dz=0,dy=15] run function wicked:cauldron/effect_malefice


# ## X positif - Z Negatif

# execute as @e[tag=malefice,tag=!large] at @s positioned ~-1 ~ ~ run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=13,dz=-5,dy=15] run function wicked:cauldron/effect_malefice
# execute as @e[tag=malefice,tag=!large] at @s positioned ~-1 ~ ~-5 run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=12,dz=-6,dy=15] run function wicked:cauldron/effect_malefice
# execute as @e[tag=malefice,tag=!large] at @s positioned ~-1 ~ ~-11 run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=6,dz=-2,dy=15] run function wicked:cauldron/effect_malefice

# ## X Negatif - Z Negatif

# execute as @e[tag=malefice,tag=!large] at @s positioned ~-1 ~ ~ run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-8,dz=-11,dy=15] run function wicked:cauldron/effect_malefice
# execute as @e[tag=malefice,tag=!large] at @s positioned ~-1 ~ ~-11 run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-7,dz=-2,dy=15] run function wicked:cauldron/effect_malefice
# execute as @e[tag=malefice,tag=!large] at @s positioned ~-8 ~ ~ run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-4,dz=-9,dy=15] run function wicked:cauldron/effect_malefice
# execute as @e[tag=malefice,tag=!large] at @s positioned ~-12 ~ ~ run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-1,dz=-7,dy=15] run function wicked:cauldron/effect_malefice
# execute as @e[tag=malefice,tag=!large] at @s positioned ~-13 ~ ~ run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-1,dz=-5,dy=15] run function wicked:cauldron/effect_malefice
# execute as @e[tag=malefice,tag=!large] at @s positioned ~-14 ~ ~-2 run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-2,dz=-3,dy=15] run function wicked:cauldron/effect_malefice



# ## X Negatif - Z positif

# execute as @e[tag=malefice,tag=!large] at @s positioned ~-1 ~ ~ run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-6,dz=13,dy=15] run function wicked:cauldron/effect_malefice
# execute as @e[tag=malefice,tag=!large] at @s positioned ~-7 ~ ~ run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-1,dz=11,dy=15] run function wicked:cauldron/effect_malefice
# execute as @e[tag=malefice,tag=!large] at @s positioned ~-8 ~ ~ run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-4,dz=11,dy=15] run function wicked:cauldron/effect_malefice
# execute as @e[tag=malefice,tag=!large] at @s positioned ~-12 ~ ~ run execute as @e[tag=!wicked,type=!#minecraft:dontharm,dx=-2,dz=6,dy=15] run function wicked:cauldron/effect_malefice



# ######### PARTICLE 

# execute as @e[tag=c_spell14,tag=!large] at @s positioned ~ ~ ~ run function wicked:cauldron/particle/alchemymod_2
# execute as @e[tag=c_spell,tag=!large] at @s anchored eyes run function wicked:cauldron/particle/alchemymod_2


# execute as @e[tag=c_spell28,tag=large] at @s positioned ~ ~ ~ run function wicked:cauldron/particle/alchemymod_32
# execute as @e[tag=c_spell,tag=large] at @s anchored eyes run function wicked:cauldron/particle/alchemymod_32


# execute as @e[tag=c_spell] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:dragon_breath",Count:1b}},distance=..1] run function wicked:cauldron/extension





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
execute at @e[type=item,nbt={Item:{id:"minecraft:emerald_block",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:lime_banner",Count:10b}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/banner


########### CREATE FAMILIAR 
execute unless entity @e[tag=salem,limit=1] run execute at @e[type=item,nbt={Item:{id:"minecraft:coal",Count:2b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:egg",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/salem


########### ENCHANTED GOLDEN APPLE
execute at @e[type=item,nbt={Item:{id:"minecraft:golden_apple",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:written_book",Count:1b,tag:{spellbook:1b}}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/enchanted_golden_apple




######## NETHER UPGRADE SILVER SLIPPERS
execute at @e[type=item,nbt={Item:{id:"minecraft:chainmail_boots",Count:1b,tag:{silver:1b}}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:netherrack",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/upgrade_nether


######## END UPGRADE SILVER SLIPPERS
execute at @e[type=item,nbt={Item:{id:"minecraft:chainmail_boots",Count:1b,tag:{silver:1b}}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:end_stone",Count:4b}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/upgrade_end


#Magic mirror verrouillage
execute at @e[type=item,nbt={Item:{tag:{pendant:1b}}}] if entity @e[type=minecraft:interaction,tag=magic_mirror,distance=..2,sort=nearest] run tag @e[type=minecraft:interaction,tag=magic_mirror,distance=..2,sort=nearest] add locked


######## Witch Beacon
execute at @e[type=item,nbt={Item:{id:"minecraft:sugar",Count:15b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:15b}}] if block ~ ~ ~ minecraft:water_cauldron run execute at @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust",Count:15b}}] if block ~ ~ ~ minecraft:water_cauldron run function wicked:cauldron/witch_beacon


schedule function wicked:cauldron/cauldron 10t



