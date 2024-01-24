execute as @a[scores={magie=..29},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}
execute if entity @s[scores={magie=..29}] run return 0

execute at @s run function wicked:cauldron/particle/alchemymod_v_t
execute at @s run function wicked:cauldron/particle/alchemymod_v_t
execute at @s run function wicked:cauldron/particle/alchemymod_v_t

execute at @s run particle heart ^ ^ ^ 3 -1 3 100 100 force
execute at @s run execute as @e[distance=..3,type=!#dontharm] run effect give @s regeneration 30 5 true
scoreboard players remove @s magie 30
scoreboard players set @s spell 0
