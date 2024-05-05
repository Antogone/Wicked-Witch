# Check for right-clicking of chunk interactions
execute unless data entity @s interaction run return 0

# Tag the player who interacted with the chunk
execute on target run tag @s add chunkInteractor


# Play a click sound to the player
execute at @e[type=minecraft:interaction,tag=chunklock] align xyz if entity @e[tag=effect1] run function wicked:magic_cauldron/effect2
execute at @e[type=minecraft:interaction,tag=chunklock] align xyz if entity @e[tag=water] run function wicked:magic_cauldron/effect1

execute as @p[tag=chunkInteractor] at @s run playsound ui.button.click block @s ~ ~ ~

execute at @e[type=minecraft:interaction,tag=chunklock] run particle happy_villager ^ ^ ^ 0.5 1 0.5 0.001 100 force




data merge entity @e[type=marker,tag=mark,limit=1] {data:{clique:1f}} 
data modify entity @e[type=marker,tag=mark,limit=1] data.clique set value 4f


# data modify entity @e[tag=ame,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:emerald",Count:1b}]


# Un-Tag the player who interacted with the chunk
execute on target run tag @s remove chunkInteractor

# Remove interacted tag
data remove entity @s interaction
