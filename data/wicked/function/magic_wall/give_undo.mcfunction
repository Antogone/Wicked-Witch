##,tag=wicked
 # give_undo.mcfunction
 # 
 #
 # Created by Antogone.
##
scoreboard players set @s spell 0
execute as @s[scores={magie=..4}] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}
execute as @s[scores={magie=..4}] run return 0
execute as @s[scores={magie=5..}] run loot give @s loot wicked:item/undo_wall
execute as @s[scores={magie=5..}] run scoreboard players remove @s magie 5
