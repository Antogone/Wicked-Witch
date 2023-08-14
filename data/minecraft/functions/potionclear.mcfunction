execute at @a[scores={spell=68,magie=4..},tag=wicked] run function cauldron/alchemymod_v_t
execute at @a[scores={spell=68,magie=4..},tag=wicked] run function cauldron/alchemymod_v_t
execute at @a[scores={spell=68,magie=4..},tag=wicked] run function cauldron/alchemymod_v_t


execute at @a[scores={spell=68,magie=4..},tag=wicked] run execute as @e[distance=..5,tag=!wicked] run effect clear @s
execute as @a[scores={spell=68,magie=4..},tag=wicked] run effect clear @s
execute as @a[scores={spell=68,magie=..5},tag=wicked] run tellraw @s {"text":"You don't select enough magic to cast the spell !","color":"dark_green"}
execute as @a[scores={spell=68,magie=4..},tag=wicked] run scoreboard players remove @s magie 5
execute as @a[scores={spell=68},tag=wicked] run scoreboard players set @s spell 0
