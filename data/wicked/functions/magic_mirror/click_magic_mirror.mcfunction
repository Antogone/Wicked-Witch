# Check for right-clicking of chunk interactions
execute unless data entity @s interaction run return 0


# Tag the player who interacted 
execute on target run tag @s add Interactor




execute as @s[tag=locked] if entity @p[tag=Interactor,predicate=wicked:select_unlock,sort=nearest] run tag @s remove locked

execute as @s[tag=locked] unless entity @p[tag=Interactor,predicate=wicked:select_pendant,sort=nearest] run function wicked:magic_mirror/locked




# Play a click sound to the player
execute as @p[tag=Interactor] at @s run execute at @e[type=minecraft:interaction,tag=magic_mirror,sort=nearest,limit=1] run particle happy_villager ^ ^ ^ 0.5 1 0.5 0.001 100 force


# execute as @p[tag=Interactor] at @s run execute as @e[type=minecraft:marker,tag=store_dat,sort=nearest,limit=1] run function wicked:magic_mirror/get_index

execute as @p[tag=Interactor] at @s run execute store result score $index_click index run data get entity @e[type=minecraft:marker,tag=store_dat,sort=nearest,limit=1] data.index

execute as @p[tag=Interactor,tag=mirror_1] if score $index_click index = $mirror_exit index run function wicked:magic_mirror/click_impossible


execute as @p[tag=Interactor] at @s run execute as @e[type=minecraft:marker,tag=store_dat,sort=nearest,limit=1] run function wicked:magic_mirror/get_index
execute as @p[tag=Interactor] run function wicked:magic_mirror/teleport with storage magic_mirror temp
execute as @p[tag=Interactor] if entity @e[tag=salem,distance=..3,sort=nearest] run execute as @e[tag=salem,limit=1,sort=nearest] run function wicked:magic_mirror/teleport with storage magic_mirror temp


# Un-Tag the player who interacted 
execute on target run tag @s remove Interactor

# Remove interacted tag
data remove entity @s interaction
