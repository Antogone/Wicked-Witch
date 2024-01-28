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

particle witch ^ ^ ^ 3 1 3 50 1000 force
particle witch ^ ^ ^ 3 1 3 50 1000 force







summon witch ~ ~1 ~ {Tags:["wi_beacon"]}
spreadplayers ~ ~ 5 5 false @e[type=witch,tag=wi_beacon]

summon witch ~ ~1 ~ {Tags:["wi_beacon"]}
spreadplayers ~ ~ 5 5 false @e[type=witch,tag=wi_beacon]


execute if predicate wicked:20_percent run summon evoker ~ ~1 ~ {Tags:["wi_beacon"]}
spreadplayers ~ ~ 5 5 false @e[type=witch,tag=wi_beacon]

execute if predicate wicked:20_percent run summon evoker ~ ~1 ~ {Tags:["wi_beacon"]}
spreadplayers ~ ~ 5 5 false @e[type=witch,tag=wi_beacon]


execute if predicate wicked:20_percent run summon illusioner ~ ~1 ~ {Tags:["wi_beacon"]}
spreadplayers ~ ~ 5 5 false @e[type=witch,tag=wi_beacon]

execute if predicate wicked:20_percent run summon illusioner ~ ~1 ~ {Tags:["wi_beacon"]}
spreadplayers ~ ~ 5 5 false @e[type=witch,tag=wi_beacon]

execute if predicate wicked:20_percent run summon witch ~ ~1 ~ {Tags:["wi_beacon"]}
spreadplayers ~ ~ 5 5 false @e[type=witch,tag=wi_beacon]

execute if predicate wicked:20_percent run summon witch ~ ~1 ~ {Tags:["wi_beacon"]}
spreadplayers ~ ~ 5 5 false @e[type=witch,tag=wi_beacon]

execute if predicate wicked:20_percent run summon witch ~ ~1 ~ {Tags:["wi_beacon"]}
spreadplayers ~ ~ 5 5 false @e[type=witch,tag=wi_beacon]



execute if block ~ ~ ~ water_cauldron[level=1] run setblock ~ ~ ~ cauldron
execute if block ~ ~ ~ water_cauldron[level=2] run setblock ~ ~ ~ water_cauldron[level=1]
execute if block ~ ~ ~ water_cauldron[level=3] run setblock ~ ~ ~ water_cauldron[level=2]
kill @e[type=item,distance=..2]
