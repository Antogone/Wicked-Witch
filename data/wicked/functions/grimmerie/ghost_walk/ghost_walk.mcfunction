##
 # ghost_walk.mcfunction
 # 
 #
 # Created by .
##
tag @s[nbt={playerGameType:1}] add crea
tag @s[nbt={playerGameType:0}] add surv
tag @s[nbt={playerGameType:2}] add adv
tag @s add ghost


scoreboard players set @s timer 0
execute at @s run particle falling_dust green_concrete ^ ^ ^ 1 -1 1 10 1000 force
execute at @s run particle glow ^ ^ ^ 1 -1 1 0.001 100 force
execute at @s run particle falling_dust lime_concrete ^ ^ ^ 1 -1 1 10 1000 force
execute at @s run particle item lime_stained_glass ^ ^ ^ 1 -1 1 10 100 force
gamemode spectator @s
execute as @a[scores={spell=600,magie=..29},tag=wicked,limit=1] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}
scoreboard players remove @s magie 30
scoreboard players set @s spell 0

schedule function wicked:grimmerie/ghost_walk/finghost 5s

