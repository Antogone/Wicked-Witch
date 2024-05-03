##
 # ghost_walk.mcfunction
 # 
 #
 # Created by .
##

execute as @a[scores={magie=..29},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}
execute if entity @s[scores={magie=..29}] run return 0

tag @s[nbt={playerGameType:1}] add crea
tag @s[nbt={playerGameType:0}] add surv
tag @s[nbt={playerGameType:2}] add adv
tag @s add ghost


scoreboard players set @s timer 0
bossbar set minecraft:timer players @a[tag=ghost]
bossbar set minecraft:timer max 100
bossbar set minecraft:timer value 0



execute at @s run particle falling_dust{block_state: "minecraft:green_concrete"} ^ ^ ^ 1 -1 1 10 1000 force
execute at @s run particle glow ^ ^ ^ 1 -1 1 0.001 100 force
execute at @s run particle falling_dust{block_state: "minecraft:lime_concrete"} ^ ^ ^ 1 -1 1 10 1000 force
execute at @s run particle item{item: "minecraft:lime_stained_glass"} ^ ^ ^ 1 -1 1 10 100 force


gamemode spectator @s
scoreboard players remove @s magie 30
scoreboard players set @s spell 0

schedule function wicked:grimmerie/ghost_walk/finghost 5s

