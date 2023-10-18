execute as @a[scores={magie=..4},tag=wicked] run return 4

scoreboard players remove @e[tag=wicked,scores={magie=5..}] magie 5
data modify entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:golden_apple"}}] Item.id set value "enchanted_golden_apple"
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly
