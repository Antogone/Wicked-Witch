##
 # wicked.mcfunction
 # 
 #
 # Created by Antogone.
##
tag @s add dark_green
tag @s remove black
team modify Witch color dark_green
tag @s add l80
tellraw @s {"text":"You've reached your full potential and are now the Wicked Witch of the West.\nYou now have more magic and your magical blast inflicts more damage.","color":"green"}
execute at @s run playsound entity.witch.celebrate master @s ~ ~ ~
advancement grant @s only wicked:wicked