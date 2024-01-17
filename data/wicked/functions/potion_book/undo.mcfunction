##
 # undo.mcfunction
 # 
 #
 # Created by Antogone.
##

data remove storage wicked.potion Temp
data remove storage wicked.potion PotionEnd
trigger potion_trigger set 0
scoreboard players enable @p[tag=wicked] potion_trigger