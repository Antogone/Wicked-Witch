##
 # immo.mcfunction
 # 
 #
 # Created by Antogone.
##
$effect give @e[nbt={UUID:$(uuid)}] mining_fatigue 2 255 true
$effect give @e[nbt={UUID:$(uuid)}] weakness 2 255 true
$effect give @e[nbt={UUID:$(uuid)}] slowness 2 255 true


data remove storage wicked.heart heart