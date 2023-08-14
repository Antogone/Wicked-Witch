##
 # ghost_walk.mcfunction
 # 
 #
 # Created by .
##
execute as @a[tag=wicked,nbt={playerGameType:1}] run tag @s add crea
execute as @a[tag=wicked,nbt={playerGameType:0}] run tag @s add surv
execute as @a[tag=wicked,nbt={playerGameType:2}] run tag @s add adv
execute as @a[tag=wicked] run tag @s add ghost
scoreboard players set @a[tag=wicked] timer 0
execute at @a[scores={spell=600,magie=30..},tag=wicked,limit=1] run particle falling_dust green_concrete ^ ^ ^ 1 -1 1 10 1000 force
execute at @a[scores={spell=600,magie=30..},tag=wicked,limit=1] run particle glow ^ ^ ^ 1 -1 1 0.001 100 force
execute at @a[scores={spell=600,magie=30..},tag=wicked,limit=1] run particle falling_dust lime_concrete ^ ^ ^ 1 -1 1 10 1000 force
execute at @a[scores={spell=600,magie=30..},tag=wicked,limit=1] run particle item lime_stained_glass ^ ^ ^ 1 -1 1 10 100 force
execute as @a[scores={spell=600,magie=30..},tag=wicked,limit=1] at @s run gamemode spectator @s
execute as @a[scores={spell=600,magie=..29},tag=wicked,limit=1] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}
execute as @a[scores={spell=600,magie=30..},tag=wicked,limit=1] run scoreboard players remove @s magie 30
execute as @a[scores={spell=600},tag=wicked,limit=1] run scoreboard players set @s spell 0

schedule function finghost 5s

