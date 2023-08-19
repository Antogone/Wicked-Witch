
item replace entity @a[tag=wicked,limit=1,scores={select=1}] armor.head with command_block{HideFlags:3,Unbreakable:1,display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}
scoreboard players set @s[tag=wicked,scores={sneak=0}] bro 2
scoreboard players set @s[tag=wicked,scores={sneak=1..}] bro 1


execute as @a[tag=wicked,scores={select=1,bro=1}] at @s if block ~ ~-1 ~ #minecraft:airs if block ^ ^ ^1 #minecraft:airs run teleport @s ^ ^ ^1.3


execute as @a[tag=wicked,scores={select=1,bro=1},x_rotation=-90] at @s if block ~ ~-1 ~ #minecraft:airs if block ^ ^ ^0.1 #minecraft:airs run teleport @s ^ ^ ^1.6
execute as @a[tag=wicked,scores={select=1,bro=1},x_rotation=90] at @s if block ~ ~-1 ~ #minecraft:airs if block ^ ^ ^0.1 #minecraft:airs run teleport @s ^ ^ ^1.6

execute as @a[tag=wicked,scores={select=1,bro=1}] at @s anchored eyes if block ~ ~-1 ~ #minecraft:airs unless block ^ ^ ^ #minecraft:airs run teleport @s ^ ^ ^


execute as @a[tag=wicked,scores={select=1,bro=1}] at @s if block ~ ~-1 ~ #minecraft:airs unless block ^ ^ ^ #minecraft:airs run teleport @s ^ ^ ^
execute as @a[tag=wicked,scores={select=1,bro=1}] at @s if block ~ ~-1 ~ #minecraft:airs unless block ^ ^1 ^ #minecraft:airs run teleport @s ^ ^ ^
execute as @a[tag=wicked,scores={select=1,bro=1}] at @s if block ~ ~-1 ~ #minecraft:airs unless block ^ ^-1 ^ #minecraft:airs run teleport @s ^ ^ ^


execute as @a[tag=wicked,scores={select=1,bro=1}] at @s anchored eyes if block ~ ~-1 ~ #minecraft:airs unless block ^ ^ ^0.6 #minecraft:airs run teleport @s ^ ^ ^
execute as @a[tag=wicked,scores={select=1,bro=1}] at @s anchored feet if block ~ ~-1 ~ #minecraft:airs unless block ^ ^ ^1 #minecraft:airs run teleport @s ^ ^ ^



execute as @a[tag=wicked,scores={select=1,bro=1}] at @s if block ~ ~-1 ~ #minecraft:airs if block ^ ^ ^1 #minecraft:airs run effect give @s levitation 1 0 true
execute as @a[tag=wicked,scores={select=1,bro=1}] at @s unless block ~ ~-1 ~ #minecraft:airs run effect give @s slow_falling 8 0 true
execute as @a[tag=wicked,scores={select=1,bro=1}] at @s unless block ~ ~-1 ~ #minecraft:airs run effect give @s jump_boost 1 1 true


execute as @a[tag=wicked,scores={select=1,bro=1}] at @s anchored feet run particle dust 0.498 1 0.345 1 ^ ^ ^-0.5 0.2 0 0.2 1 10
execute as @a[tag=wicked,scores={select=1,bro=1}] at @s anchored feet run particle dust 0.584 0.122 0.855 1 ^ ^ ^-0.5 0.2 0 0.2 1 10



#execute as @a[tag=wicked,scores={bro=2..}] run effect give @s levitation 1 0 true
execute as @a[tag=wicked,scores={bro=2..}] run effect give @s slow_falling 1 0 true


effect give @e[tag=broom,scores={select=1,bro=1}] jump_boost 1 1 true
effect give @e[tag=broom,scores={select=1,bro=1}] slow_falling 1 1 true

scoreboard players set @s bro 0

