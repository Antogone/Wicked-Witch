execute at @a[scores={spell=3,magie=30..},tag=wicked] run function wicked:cauldron/particle/alchemymod_v_t
execute at @a[scores={spell=3,magie=30..},tag=wicked] run function wicked:cauldron/particle/alchemymod_v_t
execute at @a[scores={spell=3,magie=30..},tag=wicked] run function wicked:cauldron/particle/alchemymod_v_t

execute at @a[scores={spell=3,magie=30..},tag=wicked] run particle heart ^ ^ ^ 3 -1 3 100 100 force
execute at @a[scores={spell=3,magie=30..},tag=wicked] run execute as @e[distance=..5] run effect give @s regeneration 30 5 true
execute as @a[scores={spell=3,magie=..29},tag=wicked] run tellraw @s {"text":"You don't select enough magic to cast the spell !","color":"dark_green"}
execute as @a[scores={spell=3,magie=30..},tag=wicked] run scoreboard players remove @s magie 30
execute as @a[scores={spell=3},tag=wicked] run scoreboard players set @s spell 0
