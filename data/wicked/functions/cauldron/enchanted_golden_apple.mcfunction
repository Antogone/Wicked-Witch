execute as @a[scores={magie=..4},tag=wicked] run return 4

scoreboard players remove @e[tag=wicked,scores={magie=5..}] magie 5
execute if block ~ ~ ~ water_cauldron[level=1] run setblock ~ ~ ~ cauldron
execute if block ~ ~ ~ water_cauldron[level=2] run setblock ~ ~ ~ water_cauldron[level=1]
execute if block ~ ~ ~ water_cauldron[level=3] run setblock ~ ~ ~ water_cauldron[level=2]

data modify entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:golden_apple"}}] Item.id set value "enchanted_golden_apple"
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly
