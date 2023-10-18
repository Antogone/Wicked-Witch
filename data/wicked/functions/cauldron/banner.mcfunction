kill @e[type=item,distance=..2]
summon item ~ ~ ~ {Item:{id:"minecraft:green_banner",Count:10b,tag:{BlockEntityTag:{Patterns:[{Pattern:"cs",Color:5},{Pattern:"cs",Color:13},{Pattern:"bts",Color:5},{Pattern:"bts",Color:13},{Pattern:"tts",Color:5},{Pattern:"tts",Color:13},{Pattern:"cr",Color:5},{Pattern:"cr",Color:13},{Pattern:"flo",Color:5},{Pattern:"flo",Color:13},{Pattern:"bo",Color:5},{Pattern:"bo",Color:13}]}}}}
execute if block ~ ~ ~ water_cauldron[level=1] run setblock ~ ~ ~ cauldron
execute if block ~ ~ ~ water_cauldron[level=2] run setblock ~ ~ ~ water_cauldron[level=1]
execute if block ~ ~ ~ water_cauldron[level=3] run setblock ~ ~ ~ water_cauldron[level=2]
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly