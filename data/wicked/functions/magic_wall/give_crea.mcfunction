##
 # give_crea.mcfunction
 # 
 #
 # Created by Antogone.
##
execute as @s[scores={magie=..14}] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}
execute as @s[scores={magie=..14}] run return 0
execute as @s[scores={magie=15..}] run loot give @s loot wicked:item/wall
execute as @s[scores={magie=15..}] run scoreboard players remove @s magie 15
scoreboard players set @s spell 0
