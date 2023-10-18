##
 # timer.mcfunction
 # 
 #
 # Created by .
##
scoreboard players add @a[tag=ghost] timer 1
bossbar set minecraft:timer players @a[tag=ghost]
bossbar set minecraft:timer max 100
bossbar set minecraft:timer value 0

scoreboard players add @a[tag=ast_p] timer 1
bossbar set minecraft:timer players @a[tag=ast_p]
bossbar set minecraft:timer max 300
bossbar set minecraft:timer value 0


execute as @a[tag=ghost] run execute store result bossbar minecraft:timer value run scoreboard players get @a[tag=ghost,limit=1] timer
execute as @a[tag=ast_p] run execute store result bossbar minecraft:timer value run scoreboard players get @a[tag=ast_p,limit=1] timer


execute unless entity @a[tag=ast_p] run execute unless entity @a[tag=ghost] run bossbar set minecraft:timer players
