#By Antogone

scoreboard players remove @a[limit=1,tag=wicked,tag=tp,scores={magie=10..}] magie 10

execute as @e[tag=telp,limit=1,sort=nearest] at @s run teleport ^ ^ ^-0.8
execute as @e[tag=telp,limit=1,sort=nearest] at @s run teleport @a[tag=wicked,limit=1] @s
execute as @e[tag=wicked,limit=1] at @s anchored feet run teleport @a[tag=wicked,limit=1] ^ ^ ^-0.6




execute if entity @p[tag=wicked,tag=light_purple] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.729f,0.518f,0.973f], scale:1f} ^ ^ ^ 0.3 1 0.3 0.001 500 force
execute if entity @p[tag=wicked,tag=light_purple] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.729f,0.518f,0.973f], scale:1f} ^ ^ ^ 0.3 1 0.3 0.001 500 force
execute if entity @p[tag=wicked,tag=light_purple] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.729f,0.518f,0.973f], scale:1f} ^ ^ ^ 0.3 1 0.3 50 100 force

execute if entity @p[tag=wicked,tag=dark_purple] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.565f,0.184f,1f], scale:1f} ^ ^ ^ 0.3 1 0.3 0.001 500 force
execute if entity @p[tag=wicked,tag=dark_purple] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.565f,0.184f,1f], scale:1f} ^ ^ ^ 0.3 1 0.3 0.001 500 force
execute if entity @p[tag=wicked,tag=dark_purple] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.565f,0.184f,1f], scale:1f} ^ ^ ^ 0.3 1 0.3 50 100 force

execute if entity @p[tag=wicked,tag=dark_gray] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.533f,0.533f,0.533f], scale:1f} ^ ^ ^ 0.3 1 0.3 0.001 500 force
execute if entity @p[tag=wicked,tag=dark_gray] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.533f,0.533f,0.533f], scale:1f} ^ ^ ^ 0.3 1 0.3 0.001 500 force
execute if entity @p[tag=wicked,tag=dark_gray] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.533f,0.533f,0.533f], scale:1f} ^ ^ ^ 0.3 1 0.3 50 100 force

execute if entity @p[tag=wicked,tag=black] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.051f,0.008f,0.102f], scale:1f} ^ ^ ^ 0.3 1 0.3 0.001 500 force
execute if entity @p[tag=wicked,tag=black] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.051f,0.008f,0.102f], scale:1f} ^ ^ ^ 0.3 1 0.3 0.001 500 force
execute if entity @p[tag=wicked,tag=black] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.051f,0.008f,0.102f], scale:1f} ^ ^ ^ 0.3 1 0.3 50 100 force

execute if entity @p[tag=wicked,tag=dark_green] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.498f,1f,0.345f], scale:1f} ^ ^ ^ 0.3 1 0.3 0.001 500 force
execute if entity @p[tag=wicked,tag=dark_green] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.498f,1f,0.345f], scale:1f} ^ ^ ^ 0.3 1 0.3 0.001 500 force
execute if entity @p[tag=wicked,tag=dark_green] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.498f,1f,0.345f], scale:1f} ^ ^ ^ 0.3 1 0.3 50 100 force



execute as @e[tag=wicked,limit=1] at @s run effect give @s slow_falling 5 10 true
playsound minecraft:entity.enderman.teleport master @a
tag @a[tag=tp,limit=1] remove tp