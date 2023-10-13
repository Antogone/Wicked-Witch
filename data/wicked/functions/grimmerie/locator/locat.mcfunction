execute at @a[scores={spell=2,magie=20..},tag=wicked] run function wicked:cauldron/particle/alchemymod_v_t
execute at @a[scores={spell=2,magie=20..},tag=wicked] run function wicked:cauldron/particle/alchemymod_v_t
execute at @a[scores={spell=2,magie=20..},tag=wicked] run function wicked:cauldron/particle/alchemymod_v_t


execute at @a[scores={spell=2,magie=20..},tag=wicked] run team add loc
execute at @a[scores={spell=2,magie=20..},tag=wicked] run team modify loc nametagVisibility always
execute at @a[scores={spell=2,magie=20..},tag=wicked] run team modify loc color green

execute as @a[scores={spell=2,magie=20..},tag=wicked] at @s run execute as @e[distance=..150,type=!#minecraft:dontharm,tag=!wicked,tag=!wall,tag=!top1] run team join loc
execute at @a[scores={spell=2,magie=20..},tag=wicked] run execute as @e[distance=..150,type=!#minecraft:dontharm,team=loc] run effect give @s glowing 20 1 true
execute as @a[scores={spell=2,magie=..19},tag=wicked] run tellraw @s {"text":"You don't select enough magic to cast the spell !","color":"dark_green"}
execute as @a[scores={spell=2,magie=20..},tag=wicked] run scoreboard players remove @s magie 20
execute as @a[scores={spell=2},tag=wicked] run scoreboard players set @s spell 0
schedule function wicked:grimmerie/locator/finlocat 21s
