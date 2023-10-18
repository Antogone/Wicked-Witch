execute at @s run function wicked:cauldron/particle/alchemymod_v_t
execute at @s run function wicked:cauldron/particle/alchemymod_v_t
execute at @s run function wicked:cauldron/particle/alchemymod_v_t


execute at @s run execute as @e[distance=..5,tag=!wicked] run effect clear @s
effect clear @s
execute as @a[tag=wicked,scores={spell=68,magie=..5}] run tellraw @s {"text":"You don't select enough magic to cast the spell !","color":"dark_green"}
scoreboard players remove @s magie 5
scoreboard players set @s spell 0
