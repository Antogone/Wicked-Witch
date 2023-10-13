##
 # timer.mcfunction
 # 
 #
 # Created by .
##
execute as @a[tag=ghost] run scoreboard players add @a[tag=ghost] timer 1
execute as @a[tag=ghost] run bossbar set minecraft:timer players @a[tag=ghost]
execute as @a[tag=ghost] run bossbar set minecraft:timer max 100
execute as @a[tag=ghost] run bossbar set minecraft:timer value 0

execute as @a[tag=ast_p] run scoreboard players add @a[tag=ast_p] timer 1
execute as @a[tag=ast_p] run bossbar set minecraft:timer players @a[tag=ast_p]
execute as @a[tag=ast_p] run bossbar set minecraft:timer max 300
execute as @a[tag=ast_p] run bossbar set minecraft:timer value 0


execute as @a[tag=ghost] run execute store result bossbar minecraft:timer value run scoreboard players get @a[tag=ghost,limit=1] timer
execute as @a[tag=ast_p] run execute store result bossbar minecraft:timer value run scoreboard players get @a[tag=ast_p,limit=1] timer


execute unless entity @a[tag=ast_p] run execute unless entity @a[tag=ghost] run bossbar set minecraft:timer players
