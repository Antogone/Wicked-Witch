execute at @a[scores={spell=1,magie=40..},tag=wicked] run function cauldron/alchemymod_v_t
execute at @a[scores={spell=1,magie=40..},tag=wicked] run function cauldron/alchemymod_v_t
execute at @a[scores={spell=1,magie=40..},tag=wicked] run function cauldron/alchemymod_v_t


execute at @a[scores={spell=1,magie=40..},tag=wicked] run execute as @e[distance=..5,type=player] run effect give @s resistance 60 255 true
execute at @a[scores={spell=1,magie=40..},tag=wicked] run execute as @e[distance=..5,type=player] run effect give @s fire_resistance 60 255 true
execute at @a[scores={spell=1,magie=40..},tag=wicked] run execute as @e[distance=..5,type=player] run effect give @s slow_falling 60 255 true
execute as @a[scores={spell=1,magie=..39},tag=wicked] run tellraw @s {"text":"You don't select enough magic to cast the spell !","color":"dark_green"}
execute as @a[scores={spell=1,magie=40..},tag=wicked] run scoreboard players remove @s magie 40
execute as @a[scores={spell=1},tag=wicked] run scoreboard players set @s spell 0