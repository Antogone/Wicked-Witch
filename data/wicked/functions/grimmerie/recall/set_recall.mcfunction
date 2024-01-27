##
 # set_recall.mcfunction
 # 
 #
 # Created by Antogone.
##
execute as @a[scores={magie=..14},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}
execute if entity @s[scores={magie=..14}] run return 0

data modify storage wicked.recall recall.dim set from entity @s Dimension
data modify storage wicked.recall recall.x set from entity @s Pos[0]
data modify storage wicked.recall recall.y set from entity @s Pos[1]
data modify storage wicked.recall recall.z set from entity @s Pos[2]

execute at @s run function wicked:cauldron/particle/alchemymod_v_t
execute at @s run function wicked:cauldron/particle/alchemymod_v_t
execute at @s run function wicked:cauldron/particle/alchemymod_v_t

scoreboard players remove @s magie 15
scoreboard players set @s spell 0