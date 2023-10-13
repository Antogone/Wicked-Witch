#by Bomerie
execute as @s at @s if block ~ ~ ~ #minecraft:ray_permeable run tp @s ^ ^ ^0.7

# execute as @s at @s if block ~ ~ ~ air run tp @s ^ ^ ^0.7
# execute as @s at @s if block ~ ~ ~ cave_air run tp @s ^ ^ ^0.7
# execute as @s at @s if block ~ ~ ~ water run tp @s ^ ^ ^0.7
# execute as @s at @s if block ~ ~ ~ barrier run tp @s ^ ^ ^0.7
# execute as @s at @s if block ~ ~ ~ lime_stained_glass run tp @s ^ ^ ^0.7


execute as @s at @s if entity @e[tag=wall,distance=..1] run tp @s ^ ^ ^1
execute at @e[tag=wicked,tag=tp] as @e[tag=telp,distance=300] run function effect
execute at @e[tag=wicked,tag=tp] run kill @e[tag=telp,distance=301..]


execute as @s at @s if block ~ ~ ~ #minecraft:ray_permeable run function loop

# execute as @s at @s if block ~ ~ ~ air run function loop
# execute as @s at @s if block ~ ~ ~ cave_air run function loop
# execute as @s at @s if block ~ ~ ~ water run function loop
# execute as @s at @s if block ~ ~ ~ barrier run function loop


execute as @s at @s if entity @e[tag=wall,distance=..1] run function loop