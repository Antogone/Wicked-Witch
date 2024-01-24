execute as @a[scores={magie=..39},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}
execute if entity @s[scores={magie=..39}] run return 0

execute at @s run function wicked:cauldron/particle/alchemymod_v_t
execute at @s run function wicked:cauldron/particle/alchemymod_v_t
execute at @s run function wicked:cauldron/particle/alchemymod_v_t


execute at @s run execute as @e[distance=..3,type=!#dontharm] run effect give @s resistance 60 255 true
execute at @s run execute as @e[distance=..3,type=!#dontharm] run effect give @s fire_resistance 60 255 true
execute at @s run execute as @e[distance=..3,type=!#dontharm] run effect give @s slow_falling 60 255 true

scoreboard players remove @s magie 40
scoreboard players set @s spell 0