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

data modify storage wicked.potion Temp.id set value -14
data modify storage wicked.potion Temp.duration set value 200
data modify storage wicked.potion Temp.amplifier set value 4
