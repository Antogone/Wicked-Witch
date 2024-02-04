###########################
# WITCH'S BROMM
###########################


item replace entity @a[tag=wicked,limit=1,gamemode=!spectator,predicate=wicked:select_broom_2] armor.head with command_block{HideFlags:3,CustomModelData:14120001,Unbreakable:1,display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}


execute as @a[tag=wicked,scores={broo=1},gamemode=!spectator] at @s run function wicked:broom/fly
execute as @a[tag=wicked,scores={broo=2..},gamemode=!spectator] run effect give @s slow_falling 1 0 true





