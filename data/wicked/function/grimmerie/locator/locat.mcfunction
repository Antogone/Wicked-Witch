execute as @a[scores={magie=..9},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}
execute if entity @s[scores={magie=..9}] run return 0



execute if entity @s[tag=wicked,tag=light_purple] at @s run function wicked:cauldron/particle/couleur/light_purple
execute if entity @s[tag=wicked,tag=light_purple] at @s run function wicked:cauldron/particle/couleur/light_purple
execute if entity @s[tag=wicked,tag=light_purple] at @s run function wicked:cauldron/particle/couleur/light_purple



execute if entity @s[tag=wicked,tag=dark_purple] at @s run function wicked:cauldron/particle/couleur/dark_purple
execute if entity @s[tag=wicked,tag=dark_purple] at @s run function wicked:cauldron/particle/couleur/dark_purple
execute if entity @s[tag=wicked,tag=dark_purple] at @s run function wicked:cauldron/particle/couleur/dark_purple



execute if entity @s[tag=wicked,tag=dark_gray] at @s run function wicked:cauldron/particle/couleur/dark_gray
execute if entity @s[tag=wicked,tag=dark_gray] at @s run function wicked:cauldron/particle/couleur/dark_gray
execute if entity @s[tag=wicked,tag=dark_gray] at @s run function wicked:cauldron/particle/couleur/dark_gray



execute if entity @s[tag=wicked,tag=black] at @s run function wicked:cauldron/particle/couleur/black
execute if entity @s[tag=wicked,tag=black] at @s run function wicked:cauldron/particle/couleur/black
execute if entity @s[tag=wicked,tag=black] at @s run function wicked:cauldron/particle/couleur/black


execute if entity @s[tag=wicked,tag=dark_green] at @s run function wicked:cauldron/particle/alchemymod_v_t
execute if entity @s[tag=wicked,tag=dark_green] at @s run function wicked:cauldron/particle/alchemymod_v_t
execute if entity @s[tag=wicked,tag=dark_green] at @s run function wicked:cauldron/particle/alchemymod_v_t




execute at @s run team add loc
execute at @s run team modify loc nametagVisibility always


execute if entity @s[tag=wicked,tag=light_purple] run team modify loc color light_purple

execute if entity @s[tag=wicked,tag=dark_purple] run team modify loc color dark_purple

execute if entity @s[tag=wicked,tag=dark_gray] run team modify loc color dark_gray

execute if entity @s[tag=wicked,tag=black] run team modify loc color black

execute if entity @s[tag=wicked,tag=dark_green] run team modify loc color green


execute as @s at @s run execute as @e[distance=..150,type=!#minecraft:dontharm,tag=!wicked,tag=!wall,tag=!top1] run team join loc
execute at @s run execute as @e[team=loc] run effect give @s glowing 20 1 true
execute as @a[scores={spell=2,magie=..9},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}
scoreboard players remove @s magie 10
scoreboard players set @s spell 0
schedule function wicked:grimmerie/locator/finlocat 21s
