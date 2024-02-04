
tag @s remove fixa
# function wicked:immobilization/finfix


scoreboard players set @s click 0

execute store success score $s trouve run tag @e[distance=..10,sort=nearest,tag=!wicked,type=!#minecraft:dontharm,team=!fix,tag=!fixa,tag=!wall,tag=!top1,tag=!salem] add fixa
execute if score $s trouve matches 1 run scoreboard players remove @e[tag=wicked,scores={magie=15..}] magie 15
