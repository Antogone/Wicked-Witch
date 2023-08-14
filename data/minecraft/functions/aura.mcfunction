execute at @a[scores={spell=20,magie=15..},tag=wicked] run particle falling_dust green_concrete ^ ^ ^ 10 -1 10 10 1000 force
execute at @a[scores={spell=20,magie=15..},tag=wicked] run particle falling_dust lime_concrete ^ ^ ^ 10 -1 10 10 1000 force
execute at @a[scores={spell=20,magie=15..},tag=wicked] run particle item lime_stained_glass ^ ^ ^ 10 -1 10 10 100 force
execute at @a[scores={spell=20,magie=15..},tag=wicked] run particle item lime_stained_glass ^ ^ ^ 10 -1 10 10 100 force
execute at @a[scores={spell=20,magie=15..},tag=wicked] run particle happy_villager ^ ^ ^ 10 -1 10 1 1000 force
execute as @a[scores={spell=20,magie=15..},tag=wicked] at @s run effect give @s glowing 10 1 true


# execute at @a[scores={spell=20,magie=15..},tag=wicked] run effect give @e[tag=!wicked,type=#undead,distance=..10] instant_health 1 3 true
# execute at @a[scores={spell=20,magie=15..},tag=wicked] run effect give @e[tag=!wicked,type=witch,distance=..10,sort=nearest] instant_damage 1 9 true
# execute at @a[scores={spell=20,magie=15..},tag=wicked] run effect give @e[tag=!wicked,type=!witch,type=!#undead,distance=..10,sort=nearest] instant_damage 1 2 true


execute at @a[scores={spell=20,magie=15..},tag=wicked] run execute as @e[tag=!wicked,type=!#dontharm,distance=..10] run damage @s 10 minecraft:magic by @p[tag=wicked]

execute as @a[scores={spell=20,magie=..14},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}
execute as @a[scores={spell=20,magie=15..},tag=wicked] run scoreboard players remove @s magie 15
execute as @a[scores={spell=20},tag=wicked] run scoreboard players set @s spell 0

