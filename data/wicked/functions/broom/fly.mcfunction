##
 # fly.mcfunction
 # 
 #
 # Created by Antogone.
##

execute as @s[x_rotation=-90] at @s if block ~ ~-1 ~ #minecraft:airs if block ^ ^ ^0.1 #minecraft:airs run tp @s ^ ^ ^1.6
execute as @s[x_rotation=90] at @s if block ~ ~-1 ~ #minecraft:airs if block ^ ^ ^0.1 #minecraft:airs run tp @s ^ ^ ^1.6



execute if block ~ ~-1 ~ #minecraft:airs if block ^ ^ ^1 #minecraft:airs run tp @s ^ ^ ^1.3


execute if block ~ ~-1 ~ #minecraft:airs unless block ^ ^ ^ #minecraft:airs run tp @s ^ ^ ^
execute if block ~ ~-1 ~ #minecraft:airs unless block ^ ^1 ^ #minecraft:airs run tp @s ^ ^ ^
execute if block ~ ~-1 ~ #minecraft:airs unless block ^ ^-1 ^ #minecraft:airs run tp @s ^ ^ ^


execute anchored eyes if block ~ ~-1 ~ #minecraft:airs unless block ^ ^ ^0.6 #minecraft:airs run tp @s ^ ^ ^
execute anchored feet if block ~ ~-1 ~ #minecraft:airs unless block ^ ^ ^1 #minecraft:airs run tp @s ^ ^ ^

execute anchored eyes if block ~ ~-1 ~ #minecraft:airs unless block ^ ^ ^ #minecraft:airs run tp @s ^ ^ ^


execute if block ~ ~-1 ~ #minecraft:airs if block ^ ^ ^1 #minecraft:airs run effect give @s levitation 1 0 true

execute unless block ~ ~-1 ~ #minecraft:airs run effect give @s slow_falling 8 0 true
execute unless block ~ ~-1 ~ #minecraft:airs run effect give @s jump_boost 1 1 true


execute anchored feet run particle dust 0.498 1 0.345 1 ^ ^ ^-0.5 0.2 0 0.2 1 10
execute anchored feet run particle dust 0.584 0.122 0.855 1 ^ ^ ^-0.5 0.2 0 0.2 1 10

effect give @s jump_boost 1 1 true
effect give @s slow_falling 1 1 true
