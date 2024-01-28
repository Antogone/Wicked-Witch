##
 # give_hr.mcfunction
 # 
 #
 # Created by Antogone.
##
scoreboard players set @s spell 0
execute as @s[scores={magie=..49},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the curse !","color":"dark_green"}
execute if entity @s[scores={magie=..49}] run return 0


execute if entity @s[tag=wicked,tag=dark_green] at @s run particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 1 -1 1 10 1000 force



loot give @s loot wicked:item/heart_ripping
scoreboard players remove @s magie 50
