##
 # kill_heart.mcfunction
 # 
 #
 # Created by Antogone.
##
$tag @e[nbt={UUID:$(uuid)}] remove no_heart
$kill @e[nbt={UUID:$(uuid)}]
data remove storage wicked.heart heart
execute as @s run item replace entity @s weapon.mainhand with air
