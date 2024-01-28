##
 # witch_beacon.mcfunction
 # 
 #
 # Created by Antogone.
##
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly

summon witch ~ ~1 ~ {Tags:["wi_beacon"]}
spreadplayers ~ ~ 5 5 false @e[type=witch]

summon witch ~ ~1 ~ {Tags:["wi_beacon"]}

spreadplayers ~ ~ 5 5 false @e[type=witch]

summon witch ~ ~1 ~ {Tags:["wi_beacon"]}
spreadplayers ~ ~ 5 5 false @e[type=witch]



execute if block ~ ~ ~ water_cauldron[level=1] run setblock ~ ~ ~ cauldron
execute if block ~ ~ ~ water_cauldron[level=2] run setblock ~ ~ ~ water_cauldron[level=1]
execute if block ~ ~ ~ water_cauldron[level=3] run setblock ~ ~ ~ water_cauldron[level=2]
kill @e[type=item,distance=..2]
