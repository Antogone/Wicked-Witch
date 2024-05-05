# Move forward according to step size
tp @s ^ ^ ^0.5

# Check for collisions
execute if entity @e[tag=!ray,tag=!wicked,type=!#minecraft:dontharm,distance=..1.5] run tag @s add hit

## Color Setting 
execute if entity @p[tag=wicked,tag=light_purple] run particle minecraft:dust{color: [0.729f,0.518f,0.973f], scale:1f} ^ ^ ^ 0.2 0.2 0.2 10 10 force
execute if entity @p[tag=wicked,tag=dark_purple] run particle minecraft:dust{color: [0.565f,0.184f,1f], scale:1f} ^ ^ ^ 0.2 0.2 0.2 10 10 force
execute if entity @p[tag=wicked,tag=dark_gray] run particle minecraft:dust{color: [0.533f,0.533f,0.533f], scale:1f} ^ ^ ^ 0.2 0.2 0.2 10 10 force
execute if entity @p[tag=wicked,tag=black] run particle minecraft:dust{color: [0.051f,0.008f,0.102f], scale:1f} ^ ^ ^ 0.2 0.2 0.2 10 10 force

execute if entity @p[tag=wicked,tag=dark_green] run particle minecraft:dust{color: [0.565f,0.184f,1f], scale:1f} ^ ^ ^ 0.05 0.05 0.05 10 1 force
execute if entity @p[tag=wicked,tag=dark_green] run particle minecraft:dust{color: [0.498f,1f,0.345f], scale:1f} ^ ^ ^ 0.2 0.2 0.2 10 10 force
execute if entity @p[tag=wicked,tag=dark_green] run particle minecraft:dust{color: [0.498f,1f,0.345f], scale:1f} ^ ^ ^ 0.2 0.2 0.2 10 10 force


execute as @e[tag=ray,limit=1] run function wicked:wicked_ray/effect_selector



# Check for collisions with blocks
execute unless block ~ ~ ~ #minecraft:ray_permeable run tag @s add hitBlock

# Decrease the number of steps remaining
scoreboard players remove @s steps 1

# Recurse until we hit something or run out of steps
execute as @s[tag=!hit,tag=!hitBlock,scores={steps=1..}] at @s run function wicked:wicked_ray/move
