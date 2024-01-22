# Move forward according to step size
tp @s ^ ^ ^0.5



execute if entity @p[tag=wicked,tag=light_purple] run particle minecraft:dust 0.729 0.518 0.973 1 ^ ^ ^ 0.2 0.2 0.2 10 10 force

execute if entity @p[tag=wicked,tag=dark_purple] run particle minecraft:dust 0.431 0.071 0.839 1 ^ ^ ^ 0.2 0.2 0.2 10 10 force

execute if entity @p[tag=wicked,tag=dark_gray] run particle minecraft:dust 0.533 0.533 0.533 1 ^ ^ ^ 0.2 0.2 0.2 10 10 force

execute if entity @p[tag=wicked,tag=black] run particle minecraft:dust 0.051 0.008 0.102 1 ^ ^ ^ 0.2 0.2 0.2 10 10 force

execute if entity @p[tag=wicked,tag=dark_green] run particle minecraft:dust 0.431 0.071 0.839 1 ^ ^ ^ 0.05 0.05 0.05 10 1 force
execute if entity @p[tag=wicked,tag=dark_green] run particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.2 0.2 0.2 10 10 force





execute as @e[tag=ray,limit=1] if entity @p[tag=wicked,tag=dark_green] run execute as @e[tag=!ray,tag=!wicked,type=!#minecraft:dontharm,distance=..2,sort=nearest] run damage @s 16 minecraft:generic_kill by @p[tag=wicked]

execute as @e[tag=ray,limit=1] if entity @p[tag=wicked,tag=black] run execute as @e[tag=!ray,tag=!wicked,type=!#minecraft:dontharm,distance=..2,sort=nearest] run damage @s 14 minecraft:generic_kill by @p[tag=wicked]

execute as @e[tag=ray,limit=1] if entity @p[tag=wicked,tag=dark_gray] run execute as @e[tag=!ray,tag=!wicked,type=!#minecraft:dontharm,distance=..2,sort=nearest] run damage @s 10 minecraft:generic_kill by @p[tag=wicked]

execute as @e[tag=ray,limit=1] if entity @p[tag=wicked,tag=dark_purple] run execute as @e[tag=!ray,tag=!wicked,type=!#minecraft:dontharm,distance=..2,sort=nearest] run damage @s 8 minecraft:generic_kill by @p[tag=wicked]


execute as @e[tag=ray,limit=1] if entity @p[tag=wicked,tag=light_purple] run execute as @e[tag=!ray,tag=!wicked,type=!#minecraft:dontharm,distance=..2,sort=nearest] run damage @s 6 minecraft:generic_kill by @p[tag=wicked]




execute as @e[tag=ray,limit=1] run execute as @e[tag=!ray,tag=!wicked,type=!#minecraft:dontharm,distance=..2,sort=nearest] run effect give @s weakness 10 0 true


# Check for collisions
execute if entity @e[tag=!ray,tag=!wicked,type=!#minecraft:dontharm,distance=..1.5] run tag @s add hit

# Check for collisions with blocks
execute unless block ~ ~ ~ #minecraft:ray_permeable run tag @s add hitBlock

# Decrease the number of steps remaining
scoreboard players remove @s steps 1

# Recurse until we hit something or run out of steps
execute as @s[tag=!hit,tag=!hitBlock,scores={steps=1..}] at @s run function wicked:wicked_ray/move
