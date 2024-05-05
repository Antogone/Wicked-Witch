#By Antogone

execute as @e[tag=mtp] run scoreboard players remove @e[tag=wicked,limit=1,scores={magie=10..}] magie 10
execute as @e[tag=telp,limit=1,sort=nearest] at @s run teleport ^ ^ ^-1
execute as @e[tag=telp,limit=1,sort=nearest] at @s run teleport @e[tag=mtp,limit=10] @s





execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] if entity @p[tag=wicked,tag=light_purple] run particle minecraft:dust{color: [0.729f,0.518f,0.973f], scale:1f} ^ ^ ^ 0.5 1 0.5 0.001 300 force
execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] if entity @p[tag=wicked,tag=light_purple] run particle minecraft:dust{color: [0.729f,0.518f,0.973f], scale:1f} ^ ^ ^ 0.5 1 0.5 0.001 300 force

execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] if entity @p[tag=wicked,tag=dark_purple] run particle minecraft:dust{color: [0.565f,0.184f,1f], scale:1f} ^ ^ ^ 0.5 1 0.5 0.001 300 force
execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] if entity @p[tag=wicked,tag=dark_purple] run particle minecraft:dust{color: [0.565f,0.184f,1f], scale:1f} ^ ^ ^ 0.5 1 0.5 0.001 300 force

execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] if entity @p[tag=wicked,tag=dark_gray] run particle minecraft:dust{color: [0.533f,0.533f,0.533f], scale:1f} ^ ^ ^ 0.5 1 0.5 0.001 300 force
execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] if entity @p[tag=wicked,tag=dark_gray] run particle minecraft:dust{color: [0.533f,0.533f,0.533f], scale:1f} ^ ^ ^ 0.5 1 0.5 0.001 300 force

execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] if entity @p[tag=wicked,tag=black] run particle minecraft:dust{color: [0.051f,0.008f,0.102f], scale:1f} ^ ^ ^ 0.5 1 0.5 0.001 300 force
execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] if entity @p[tag=wicked,tag=black] run particle minecraft:dust{color: [0.051f,0.008f,0.102f], scale:1f} ^ ^ ^ 0.5 1 0.5 0.001 300 force

execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] if entity @p[tag=wicked,tag=dark_green] run particle minecraft:dust{color: [0.498f,1f,0.345f], scale:1f} ^ ^ ^ 0.5 1 0.5 0.001 300 force
execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] if entity @p[tag=wicked,tag=dark_green] run particle minecraft:dust{color: [0.498f,1f,0.345f], scale:1f} ^ ^ ^ 0.5 1 0.5 0.001 300 force



execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] run effect give @s slow_falling 5 10 true
execute as @e[tag=mtp] run tag @s remove mtp
playsound minecraft:entity.enderman.teleport master @a
