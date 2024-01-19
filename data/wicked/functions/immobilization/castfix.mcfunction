
tag @s remove fixa
function wicked:immobilization/finfix


execute at @e[distance=..10,limit=10,sort=nearest,tag=!wicked,type=!#minecraft:dontharm,team=!fix] run summon marker ~ ~ ~ {NoGravity:1b,duration:500,Tags:[fix]}
execute if entity @e[tag=fix] run scoreboard players remove @e[tag=wicked,scores={magie=15..}] magie 15

scoreboard players set @s click 0
tag @s add fixa
