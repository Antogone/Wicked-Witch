##
 # upgrade_end.mcfunction
 # 
 #
 # Created by Antogone.
##
# execute as @a[scores={magie=..9},tag=wicked] run return 4

# scoreboard players remove @e[tag=wicked,scores={magie=10..}] magie 10

kill @e[type=item,nbt={Item:{id:"minecraft:end_stone",Count:4b}},distance=..2]
kill @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:4b}},distance=..2]

execute if block ~ ~ ~ water_cauldron[level=1] run setblock ~ ~ ~ cauldron
execute if block ~ ~ ~ water_cauldron[level=2] run setblock ~ ~ ~ water_cauldron[level=1]
execute if block ~ ~ ~ water_cauldron[level=3] run setblock ~ ~ ~ water_cauldron[level=2]

data modify storage wicked.tellraw silver.end set value {"text":"[The End]","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 2"}}
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly

advancement grant @p[tag=wicked] only wicked:end_upgrade