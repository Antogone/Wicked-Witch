execute as @a[scores={magie=..14},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}
execute if entity @s[scores={magie=..14}] run return 0


execute at @s run particle falling_dust green_concrete ^ ^ ^ 10 -1 10 10 1000 force
execute at @s run particle falling_dust lime_concrete ^ ^ ^ 10 -1 10 10 1000 force
execute at @s run particle item lime_stained_glass ^ ^ ^ 10 -1 10 10 100 force
execute at @s run particle item lime_stained_glass ^ ^ ^ 10 -1 10 10 100 force
execute at @s run particle happy_villager ^ ^ ^ 10 -1 10 1 1000 force

execute at @s run function wicked:cauldron/particle/alchemymod_v_t
execute at @s run function wicked:cauldron/particle/alchemymod_v_t
execute at @s run function wicked:cauldron/particle/alchemymod_v_t

effect give @s glowing 5 1 true


execute at @s run execute as @e[type=!#minecraft:dontharm,tag=!wicked,distance=..10] run damage @s 25 minecraft:generic_kill by @p[tag=wicked]

scoreboard players remove @s magie 15
scoreboard players set @s spell 0

