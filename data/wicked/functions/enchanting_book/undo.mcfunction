##
 # undo.mcfunction
 # 
 #
 # Created by Antogone.
##
data remove storage wicked.ench Temp
data remove storage wicked.ench EnchEnd
trigger ench_trigger set 0
scoreboard players enable @p[tag=wicked] ench_trigger

data modify storage wicked.ench Temp.id set value -14
data modify storage wicked.potion Temp.lvl set value 0
