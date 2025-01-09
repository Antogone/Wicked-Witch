##
 # dark.mcfunction
 # 
 #
 # Created by Antogone.
##
tag @s add black
tag @s remove dark_gray
scoreboard players add #limit magie 100
team modify Witch color black
scoreboard players set @s killwitch 0
tellraw @s {"text":"Your power has grown stronger, and you're now a dark witch! You now have more magic and your magical blast inflicts more damage.","color":"black"}
execute at @s run playsound entity.witch.celebrate master @s ~ ~ ~
advancement grant @s only wicked:dark