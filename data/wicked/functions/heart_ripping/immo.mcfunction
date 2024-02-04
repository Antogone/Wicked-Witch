##
 # immo.mcfunction
 # 
 #
 # Created by Antogone.
##
$effect give @e[nbt={UUID:$(uuid)}] mining_fatigue 2 127 true
$effect give @e[nbt={UUID:$(uuid)}] weakness 2 127 true
$effect give @e[nbt={UUID:$(uuid)}] slowness 2 127 true
# $effect give @e[nbt={UUID:$(uuid)}] jump_boost 2 190 true

data remove storage wicked.heart heart