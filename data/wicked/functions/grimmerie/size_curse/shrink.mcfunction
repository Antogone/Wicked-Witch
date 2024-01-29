##
 # shrink.mcfunction
 # 
 #
 # Created by Antogone.
##
##
 # giant.mcfunction
 # 
 #
 # Created by Antogone.
##
scoreboard players set @s spell 0
execute as @s[scores={magie=..59},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the curse !","color":"dark_green"}
execute if entity @s[scores={magie=..59}] run return 0


execute if entity @s[tag=wicked,tag=light_purple] run particle minecraft:dust 0.729 0.518 0.973 1 ^ ^ ^ 1 -1 1 10 1000 force
execute if entity @s[tag=wicked,tag=light_purple] at @s run function wicked:cauldron/particle/couleur/light_purple


execute if entity @s[tag=wicked,tag=dark_purple] run particle minecraft:dust 0.565 0.184 1 1 ^ ^ ^ 1 -1 1 10 1000 force
execute if entity @s[tag=wicked,tag=dark_purple] at @s run function wicked:cauldron/particle/couleur/dark_purple


execute if entity @s[tag=wicked,tag=dark_gray] run particle minecraft:dust 0.533 0.533 0.533 1 ^ ^ ^ 1 -1 1 10 1000 force
execute if entity @s[tag=wicked,tag=dark_gray] at @s run function wicked:cauldron/particle/couleur/dark_gray


execute if entity @s[tag=wicked,tag=black] run particle minecraft:dust 0.051 0.008 0.102 1 ^ ^ ^ 1 -1 1 10 1000 force
execute if entity @s[tag=wicked,tag=black] at @s run function wicked:cauldron/particle/couleur/black


execute if entity @s[tag=wicked,tag=dark_green] at @s run particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 1 -1 1 10 1000 force
execute if entity @s[tag=wicked,tag=dark_green] at @s run function wicked:cauldron/particle/alchemymod_v_t



execute at @s run execute as @e[type=!#dontharm,sort=nearest,distance=..3,tag=!wicked] run attribute @s generic.scale base set 0
execute at @s run execute as @e[type=!#dontharm,sort=nearest,distance=..3,tag=!wicked] run attribute @s generic.step_height base set 0

scoreboard players remove @s magie 60

