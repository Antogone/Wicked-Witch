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


#VERT 
execute anchored feet run particle dust{color: [0.498f,1f,0.345f], scale:1f} ^ ^ ^-0.5 0.2 0 0.2 1 10 

#VIOLET
execute anchored feet run particle dust{color: [0.584f,0.122f,0.855f], scale:1f} ^ ^ ^-0.5 0.2 0 0.2 1 10

# execute anchored feet run particle dust_color_transition{from_color: [0.584f,0.122f,0.855f], scale: 1f, to_color: [0.498f,1f,0.345f]} ^ ^ ^-0.5 0.2 0 0.2 1 10

effect give @s jump_boost 1 1 true
effect give @s slow_falling 1 1 true
