execute at @a[scores={spell=92,magie=25..},tag=wicked] run particle glow ^ ^ ^ 5 -1 5 0.001 100 force

execute at @a[scores={spell=92,magie=25..},tag=wicked] run function cauldron/alchemymod_v_t
execute at @a[scores={spell=92,magie=25..},tag=wicked] run function cauldron/alchemymod_v_t
execute at @a[scores={spell=92,magie=25..},tag=wicked] run function cauldron/alchemymod_v_t

execute at @a[scores={spell=92,magie=25..},tag=wicked] run summon witch
execute at @a[scores={spell=92,magie=25..},tag=wicked] run summon witch
execute at @a[scores={spell=92,magie=25..},tag=wicked] run summon witch
execute at @a[scores={spell=92,magie=25..},tag=wicked] run summon witch
execute as @a[scores={spell=92,magie=..24},tag=wicked] run tellraw @s {"text":"You don't select enough magic to cast the spell !","color":"dark_green"}
execute as @a[scores={spell=92,magie=25..},tag=wicked] run scoreboard players remove @s magie 25
execute as @a[scores={spell=92},tag=wicked] run scoreboard players set @s spell 0
