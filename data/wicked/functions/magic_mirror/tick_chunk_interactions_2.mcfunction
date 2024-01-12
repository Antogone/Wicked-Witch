# Check for right-clicking of chunk interactions
execute unless data entity @s interaction run return 0

# Tag the player who interacted with the chunk
execute on target run tag @s add Interactor


# Play a click sound to the player
execute as @p[tag=Interactor] at @s run playsound ui.button.click block @s ~ ~ ~
execute as @p[tag=Interactor] at @s run execute at @e[type=minecraft:interaction,tag=magic_mirror,sort=nearest,limit=1] run particle happy_villager ^ ^ ^ 0.5 1 0.5 0.001 100 force

execute as @p[tag=Interactor] at @s run execute as @e[type=minecraft:marker,tag=store_dat,sort=nearest,limit=1] run function wicked:magic_mirror/get_index

execute as @p[tag=Interactor] run function wicked:magic_mirror/teleport with storage magic_mirror temp


# Un-Tag the player who interacted with the chunk
execute on target run tag @s remove Interactor

# Remove interacted tag
data remove entity @s interaction
