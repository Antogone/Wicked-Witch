##
 # mystic.mcfunction
 # 
 #
 # Created by Antogone.
##
tag @s add dark_purple
tag @s remove light_purple
scoreboard players add #limit magie 100
team modify Witch color dark_purple
scoreboard players set @s killwitch 0
tellraw @s {"text":"Your power has grown stronger, and you're now a mystic witch! You now have more magic and your magical blast inflicts more damage.","color":"dark_purple"}
execute at @s run playsound entity.witch.celebrate master @s ~ ~ ~
advancement grant @s only wicked:mystic