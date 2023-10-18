execute at @s run function wicked:cauldron/particle/alchemymod_v_t
execute at @s run function wicked:cauldron/particle/alchemymod_v_t
execute at @s run function wicked:cauldron/particle/alchemymod_v_t


execute at @s run execute as @e[distance=..5,type=!#dontharm] run effect give @s resistance 60 255 true
execute at @s run execute as @e[distance=..5,type=!#dontharm] run effect give @s fire_resistance 60 255 true
execute at @s run execute as @e[distance=..5,type=!#dontharm] run effect give @s slow_falling 60 255 true
execute as @a[scores={spell=1,magie=..39},tag=wicked] run tellraw @s {"text":"You don't select enough magic to cast the spell !","color":"dark_green"}
scoreboard players remove @s magie 40
scoreboard players set @s spell 0