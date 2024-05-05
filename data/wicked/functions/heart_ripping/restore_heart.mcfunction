##
 # restore_heart.mcfunction
 # 
 #
 # Created by Antogone.
##
$execute unless entity @s[nbt={UUID:$(uuid)}] run return 0
tellraw @p {"text":"Heart Restored","color":"dark_green"}
tag @s remove no_heart
kill @e[type=item,nbt={Item:{tag:{heart:1b}}},sort=nearest] 