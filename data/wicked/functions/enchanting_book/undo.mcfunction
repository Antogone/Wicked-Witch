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