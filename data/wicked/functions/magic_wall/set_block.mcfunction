##
 # set_block.mcfunction
 # 
 #
 # Created by Antogone.
##
execute if block ~ ~ ~ #minecraft:ray_permeable run fill ~ ~ ~ ~ ~ ~ lime_stained_glass replace air

# CROSSING
execute if entity @e[distance=..2,predicate=wicked:select_spellbook] run fill ~ ~ ~ ~ ~ ~ air replace lime_stained_glass
execute if entity @e[distance=..2,tag=wicked,predicate=wicked:select_pendant] run fill ~ ~ ~ ~ ~ ~ air replace lime_stained_glass

