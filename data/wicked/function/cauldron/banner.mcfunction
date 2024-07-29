kill @e[type=item,distance=..2]
summon item ~ ~ ~ {Item:{id:"minecraft:green_banner",count:10,components:{"minecraft:banner_patterns":[{pattern:"minecraft:stripe_center",color:"lime"},{pattern:"minecraft:stripe_center",color:"green"},{pattern:"minecraft:triangles_bottom",color:"lime"},{pattern:"minecraft:triangles_bottom",color:"green"},{pattern:"minecraft:triangles_top",color:"lime"},{pattern:"minecraft:triangles_top",color:"green"},{pattern:"minecraft:cross",color:"lime"},{pattern:"minecraft:cross",color:"green"},{pattern:"minecraft:flower",color:"lime"},{pattern:"minecraft:flower",color:"green"},{pattern:"minecraft:border",color:"lime"},{pattern:"minecraft:border",color:"green"}]}}}

execute if block ~ ~ ~ water_cauldron[level=1] run setblock ~ ~ ~ cauldron
execute if block ~ ~ ~ water_cauldron[level=2] run setblock ~ ~ ~ water_cauldron[level=1]
execute if block ~ ~ ~ water_cauldron[level=3] run setblock ~ ~ ~ water_cauldron[level=2]
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly