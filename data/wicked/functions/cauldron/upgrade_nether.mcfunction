##
 # upgrade_nether.mcfunction
 # 
 #
 # Created by Antogone.
##
execute as @a[scores={magie=..9},tag=wicked] run return 4

scoreboard players remove @e[tag=wicked,scores={magie=10..}] magie 10



kill @e[type=item,nbt={Item:{id:"minecraft:netherrack",Count:4b}},distance=..2]
kill @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:4b}},distance=..2]

execute if block ~ ~ ~ water_cauldron[level=1] run setblock ~ ~ ~ cauldron
execute if block ~ ~ ~ water_cauldron[level=2] run setblock ~ ~ ~ water_cauldron[level=1]
execute if block ~ ~ ~ water_cauldron[level=3] run setblock ~ ~ ~ water_cauldron[level=2]

data modify storage wicked.tellraw silver.nether set value {"text":"[The Nether]","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 1"}}
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly

advancement grant @p[tag=wicked] only wicked:nether_upgrade