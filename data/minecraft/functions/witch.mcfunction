# By Bomerie


execute as @e[scores={select=1}] at @s if entity @e[type=witch,distance=..30] run effect give @s regeneration 10 4 true
execute as @e[scores={select=1}] at @s if entity @e[type=witch,distance=..30] run effect give @s resistance 10 4 true
execute as @e[scores={select=1}] at @s if entity @e[type=witch,distance=..30] run effect give @s strength 10 4 true

execute as @e[scores={select=0}] at @s if entity @e[type=witch,distance=..30] run effect give @s regeneration 10 4 true
execute as @e[scores={select=0}] at @s if entity @e[type=witch,distance=..30] run effect give @s resistance 10 4 true
execute as @e[scores={select=0}] at @s if entity @e[type=witch,distance=..30] run effect give @s strength 10 4 true


execute at @s run team join witch @e[type=witch,distance=..20]

execute as @e[scores={select=1}] at @e[team=witch,limit=5,sort=nearest] run particle minecraft:dust 0.498 1 0.345 1 ~ ~1 ~ 0.4 -0.3 0.4 0.0001 1 force

execute as @e[scores={select=0}] at @e[team=witch,limit=5,sort=nearest,type=witch] run particle minecraft:dust 0.498 1 0.345 1 ~ ~1 ~ 0.4 -0.3 0.4 0.0001 1 force
execute as @e[scores={select=0}] at @e[team=witch,limit=5,sort=nearest,tag=wicked] run particle minecraft:dust 0.498 1 0.345 1 ~ ~1 ~ 0.4 -0.3 0.4 0.0001 1 force
