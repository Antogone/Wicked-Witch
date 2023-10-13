execute as @a[scores={magie=..39},tag=wicked] run return 4
scoreboard players remove @e[tag=wicked,scores={magie=40..}] magie 40

kill @e[type=item,distance=..2]
summon item ~ ~ ~ {Item:{id:"minecraft:slime_spawn_egg",Count:1b,tag:{display:{Name:"{\"text\":\"§2Amplificator\"}"},EntityTag:{Size:0,wasOnGround:1,NoAI:1,Silent:1,Tags:["set_ampli"]},Enchantments:[{}]}}}
execute if block ~ ~ ~ water_cauldron[level=1] run setblock ~ ~ ~ cauldron
execute if block ~ ~ ~ water_cauldron[level=2] run setblock ~ ~ ~ water_cauldron[level=1]
execute if block ~ ~ ~ water_cauldron[level=3] run setblock ~ ~ ~ water_cauldron[level=2]
function cauldron/alchemymod_fly
function cauldron/alchemymod_fly
function cauldron/alchemymod_fly
function cauldron/alchemymod_fly