execute as @a[scores={magie=..49},tag=wicked] run return 4
scoreboard players remove @e[tag=wicked,scores={magie=50..}] magie 50

kill @e[type=item,distance=..2]
summon cat ~ ~1 ~ {CustomNameVisible:1b,PersistenceRequired:1b,Health:100f,Owner:[I;0,0,0,0],variant:"minecraft:all_black",CollarColor:13b,Tags:["salem"],CustomName:'{"text":"Salem","color":"dark_green","bold":true,"italic":true}',Attributes:[{Name:max_health,Base:100}]}
data modify entity @e[tag=salem,limit=1] Owner set from entity @p[tag=wicked,limit=1] UUID
execute if block ~ ~ ~ water_cauldron[level=1] run setblock ~ ~ ~ cauldron
execute if block ~ ~ ~ water_cauldron[level=2] run setblock ~ ~ ~ water_cauldron[level=1]
execute if block ~ ~ ~ water_cauldron[level=3] run setblock ~ ~ ~ water_cauldron[level=2]
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly
schedule function wicked:cauldron/particle/alchemymod_fly 1s


