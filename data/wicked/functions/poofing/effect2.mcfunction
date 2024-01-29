#By Antogone

execute as @e[tag=mtp] run scoreboard players remove @e[tag=wicked,limit=1,scores={magie=10..}] magie 10
execute as @e[tag=telp,limit=1,sort=nearest] at @s run teleport ^ ^ ^-1
execute as @e[tag=telp,limit=1,sort=nearest] at @s run teleport @e[tag=mtp,limit=10] @s





execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] if entity @p[tag=wicked,tag=light_purple] run particle minecraft:dust 0.729 0.518 0.973 1 ^ ^ ^ 0.5 1 0.5 0.001 300 force
execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] if entity @p[tag=wicked,tag=light_purple] run particle minecraft:dust 0.729 0.518 0.973 1 ^ ^ ^ 0.5 1 0.5 0.001 300 force
execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] if entity @p[tag=wicked,tag=dark_purple] run particle minecraft:dust 0.565 0.184 1 1 ^ ^ ^ 0.5 1 0.5 0.001 300 force
execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] if entity @p[tag=wicked,tag=dark_purple] run particle minecraft:dust 0.565 0.184 1 1 ^ ^ ^ 0.5 1 0.5 0.001 300 force

execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] if entity @p[tag=wicked,tag=dark_gray] run particle minecraft:dust 0.533 0.533 0.533 1 ^ ^ ^ 0.5 1 0.5 0.001 300 force
execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] if entity @p[tag=wicked,tag=dark_gray] run particle minecraft:dust 0.533 0.533 0.533 1 ^ ^ ^ 0.5 1 0.5 0.001 300 force

execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] if entity @p[tag=wicked,tag=black] run particle minecraft:dust 0.051 0.008 0.102 1 ^ ^ ^ 0.5 1 0.5 0.001 300 force
execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] if entity @p[tag=wicked,tag=black] run particle minecraft:dust 0.051 0.008 0.102 1 ^ ^ ^ 0.5 1 0.5 0.001 300 force

execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] if entity @p[tag=wicked,tag=dark_green] run particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.5 1 0.5 0.001 300 force
execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] if entity @p[tag=wicked,tag=dark_green] run particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.5 1 0.5 0.001 300 force



execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] run effect give @s slow_falling 5 10 true
execute as @e[tag=mtp] run tag @s remove mtp
playsound minecraft:entity.enderman.teleport master @a
