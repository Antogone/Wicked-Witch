##
 # dark.mcfunction
 # 
 #
 # Created by Antogone.
##
tag @s add black
tag @s remove dark_gray

team modify Witch color black
tag @s add l70
scoreboard players set @s killwitch 0
tellraw @s {"text":"Your power has grown stronger, and you're now a dark witch!\nYou now have more magic and your magical blast inflicts more damage.","color":"black"}
execute at @s run playsound entity.witch.celebrate master @s ~ ~ ~
advancement grant @s only wicked:dark