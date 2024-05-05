##
 # extension.mcfunction
 # 
 #
 # Created by Antogone.
##
tag @s add large
tag @e[tag=c_spell14,sort=nearest,limit=1] add large
summon marker ~ ~28 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["c_spell28","large"]}
kill @e[type=item,distance=..1]
 execute as @e[tag=c_spell28] at @s run teleport @s ~ ~ ~ ~45 ~
#  execute as @e[tag=c_spell] at @s run teleport @s ~ ~ ~ ~45 ~
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly
function wicked:cauldron/particle/alchemymod_fly