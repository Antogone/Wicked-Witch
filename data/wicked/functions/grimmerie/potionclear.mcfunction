execute as @a[scores={magie=..4},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}
execute if entity @s[scores={magie=..4}] run return 0


execute at @s run function wicked:cauldron/particle/alchemymod_v_t
execute at @s run function wicked:cauldron/particle/alchemymod_v_t
execute at @s run function wicked:cauldron/particle/alchemymod_v_t


execute at @s run execute as @e[distance=..3,tag=!wicked] run effect clear @s
effect clear @s
scoreboard players remove @s magie 5
scoreboard players set @s spell 0
