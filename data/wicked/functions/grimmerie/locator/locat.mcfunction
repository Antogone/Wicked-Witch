execute as @a[scores={magie=..9},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}
execute if entity @s[scores={magie=..9}] run return 0


execute at @s run function wicked:cauldron/particle/alchemymod_v_t
execute at @s run function wicked:cauldron/particle/alchemymod_v_t
execute at @s run function wicked:cauldron/particle/alchemymod_v_t


execute at @s run team add loc
execute at @s run team modify loc nametagVisibility always
execute at @s run team modify loc color green

execute as @s at @s run execute as @e[distance=..150,type=!#minecraft:dontharm,tag=!wicked,tag=!wall,tag=!top1] run team join loc
execute at @s run execute as @e[team=loc] run effect give @s glowing 20 1 true
execute as @a[scores={spell=2,magie=..9},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}
scoreboard players remove @s magie 10
scoreboard players set @s spell 0
schedule function wicked:grimmerie/locator/finlocat 21s
