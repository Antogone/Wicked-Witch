execute as @a[tag=wicked,nbt={playerGameType:1}] run tag @s add crea
execute as @a[tag=wicked,nbt={playerGameType:0}] run tag @s add surv
execute as @a[tag=wicked,nbt={playerGameType:2}] run tag @s add adv
tag @s add ast_p
scoreboard players set @s timer 0

bossbar set minecraft:timer players @a[tag=ast_p]
bossbar set minecraft:timer max 300
bossbar set minecraft:timer value 0



# execute at @s run particle falling_dust green_concrete ^ ^ ^ 1 -1 1 10 1000 force
execute at @s run particle glow ^ ^ ^ 1 -1 1 0.001 100 force
# execute at @s run particle falling_dust lime_concrete ^ ^ ^ 1 -1 1 10 1000 force
execute at @s run particle item lime_stained_glass ^ ^ ^ 1 -1 1 0.5 1000 force


gamemode spectator @s
execute at @s run summon marker ~ ~ ~ {NoGravity:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["PAJ"]}
execute as @a[scores={spell=38,magie=..29},tag=wicked,limit=1] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}

scoreboard players remove @s magie 30
scoreboard players set @s spell 0

effect give @s glowing 15 1 true


data modify storage wicked.tep Temp.Pos set value [0d,0d,0d]


execute store result storage wicked.tep Temp.Pos[0] double 1 run data get entity @e[tag=PAJ,limit=1] Pos[0]
execute store result storage wicked.tep Temp.Pos[1] double 1 run data get entity @e[tag=PAJ,limit=1] Pos[1]
execute store result storage wicked.tep Temp.Pos[2] double 1 run data get entity @e[tag=PAJ,limit=1] Pos[2]


schedule function wicked:grimmerie/astral_projection/finastra 15s
