# Check for right-clicking of chunk interactions
execute unless data entity @s interaction run return 0

# Tag the player who interacted with the chunk
execute on target run tag @s add chunkInteractor


# Play a click sound to the player


execute as @p[tag=chunkInteractor] at @s run playsound ui.button.click block @s ~ ~ ~
execute at @e[type=minecraft:interaction,tag=chunklock] run particle happy_villager ^ ^ ^ 0.5 1 0.5 0.001 100 force
execute at @e[type=minecraft:interaction,tag=chunklock] run setblock ~ ~ ~ barrier
execute at @e[type=minecraft:interaction,tag=chunklock] align xyz unless entity @e[type=block_display,tag=chaudron] run summon block_display ~ ~ ~ {block_state:{Name:"minecraft:cauldron"},Tags:["chaudron"]}
execute at @e[type=minecraft:interaction,tag=chunklock] align xyz run summon marker ~ ~ ~ {Tags:["mark"]}


execute at @e[type=minecraft:interaction,tag=chunklock] align xyz run summon block_display ~ ~ ~ {transformation:{translation:[0.1f,0.2f,0.1f],left_rotation:[0f,0f,0f,1f],scale:[0.8f,0.7f,0.8f],right_rotation:[0f,0f,0f,1f]},block_state:{Name:"minecraft:red_stained_glass"},Tags:["effect1"]}
execute at @e[type=minecraft:interaction,tag=chunklock] align xyz run summon block_display ~ ~ ~ {transformation:{translation:[0.1f,0.2f,0.1f],left_rotation:[0f,0f,0f,1f],scale:[0.8f,0.7f,0.8f],right_rotation:[0f,0f,0f,1f]},block_state:{Name:"minecraft:red_stained_glass"},Tags:["effect1"]}


data merge entity @e[type=marker,tag=mark,limit=1] {data:{clique:1f}} 
data modify entity @e[type=marker,tag=mark,limit=1] data.clique set value 4f


# data modify entity @e[tag=ame,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:emerald",Count:1b}]


# Un-Tag the player who interacted with the chunk
execute on target run tag @s remove chunkInteractor

# Remove interacted tag
data remove entity @s interaction
