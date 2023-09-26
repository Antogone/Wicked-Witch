

###########################
# WITCH'S BROMM
###########################


item replace entity @a[tag=wicked,limit=1,scores={select=1},gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:feather",tag:{display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}}}] armor.head with command_block{HideFlags:3,CustomModelData:14120001,Unbreakable:1,display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}


execute as @a[tag=wicked,scores={select=1,broo=1},x_rotation=-90,gamemode=!spectator] at @s if block ~ ~-1 ~ #minecraft:airs if block ^ ^ ^0.1 #minecraft:airs run tp @s ^ ^ ^1.6
execute as @a[tag=wicked,scores={select=1,broo=1},x_rotation=90,gamemode=!spectator] at @s if block ~ ~-1 ~ #minecraft:airs if block ^ ^ ^0.1 #minecraft:airs run tp @s ^ ^ ^1.6

execute as @a[tag=wicked,scores={select=1,broo=1},gamemode=!spectator] at @s if block ~ ~-1 ~ #minecraft:airs if block ^ ^ ^1 #minecraft:airs run tp @s ^ ^ ^1.3


execute as @a[tag=wicked,scores={select=1,broo=1},gamemode=!spectator] at @s if block ~ ~-1 ~ #minecraft:airs unless block ^ ^ ^ #minecraft:airs run tp @s ^ ^ ^
execute as @a[tag=wicked,scores={select=1,broo=1},gamemode=!spectator] at @s if block ~ ~-1 ~ #minecraft:airs unless block ^ ^1 ^ #minecraft:airs run tp @s ^ ^ ^
execute as @a[tag=wicked,scores={select=1,broo=1},gamemode=!spectator] at @s if block ~ ~-1 ~ #minecraft:airs unless block ^ ^-1 ^ #minecraft:airs run tp @s ^ ^ ^


execute as @a[tag=wicked,scores={select=1,broo=1},gamemode=!spectator] at @s anchored eyes if block ~ ~-1 ~ #minecraft:airs unless block ^ ^ ^0.6 #minecraft:airs run tp @s ^ ^ ^
execute as @a[tag=wicked,scores={select=1,broo=1},gamemode=!spectator] at @s anchored feet if block ~ ~-1 ~ #minecraft:airs unless block ^ ^ ^1 #minecraft:airs run tp @s ^ ^ ^

execute as @a[tag=wicked,scores={select=1,broo=1},gamemode=!spectator] at @s anchored eyes if block ~ ~-1 ~ #minecraft:airs unless block ^ ^ ^ #minecraft:airs run tp @s ^ ^ ^







execute as @a[tag=wicked,scores={select=1,broo=1},gamemode=!spectator] at @s if block ~ ~-1 ~ #minecraft:airs if block ^ ^ ^1 #minecraft:airs run effect give @s levitation 1 0 true
execute as @a[tag=wicked,scores={select=1,broo=1},gamemode=!spectator] at @s unless block ~ ~-1 ~ #minecraft:airs run effect give @s slow_falling 8 0 true
execute as @a[tag=wicked,scores={select=1,broo=1},gamemode=!spectator] at @s unless block ~ ~-1 ~ #minecraft:airs run effect give @s jump_boost 1 1 true


execute as @a[tag=wicked,scores={select=1,broo=1},gamemode=!spectator] at @s anchored feet run particle dust 0.498 1 0.345 1 ^ ^ ^-0.5 0.2 0 0.2 1 10
execute as @a[tag=wicked,scores={select=1,broo=1},gamemode=!spectator] at @s anchored feet run particle dust 0.584 0.122 0.855 1 ^ ^ ^-0.5 0.2 0 0.2 1 10



#execute as @a[tag=wicked,scores={bro=2..}] run effect give @s levitation 1 0 true
execute as @a[tag=wicked,scores={broo=2..},gamemode=!spectator] run effect give @s slow_falling 1 0 true


effect give @e[tag=broom,scores={select=1,broo=1},gamemode=!spectator] jump_boost 1 1 true
effect give @e[tag=broom,scores={select=1,broo=1},gamemode=!spectator] slow_falling 1 1 true

# scoreboard players set @a[tag=wicked,nbt=!{SelectedItem:{id:"minecraft:feather",tag:{display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}}}] broo 0
