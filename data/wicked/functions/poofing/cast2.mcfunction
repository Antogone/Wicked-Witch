{color: [0.533f,0.533f,0.533f], scale:1f}#By Antogone
#cast2.mcfunction

kill @e[type=marker,tag=telp]
execute at @s run summon marker ~ ~ ~ {duration:1,Tags:[telp]}
tp @e[tag=telp,limit=1,sort=nearest] @s
tp @e[tag=telp,limit=1,sort=nearest] ~ ~1.5 ~
execute as @e[tag=telp,limit=1,sort=nearest] at @s run tag @e[type=!#dontharm,distance=..5,tag=!wicked,tag=!door,tag=!telp,tag=!wall,tag=!top1,team=!fix] add mtp

execute at @e[tag=mtp] run execute if entity @p[tag=wicked,tag=light_purple] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.729f,0.518f,0.973f], scale:1f} ^ ^ ^ 0.3 1 0.3 0.001 500 force
execute at @e[tag=mtp] run execute if entity @p[tag=wicked,tag=light_purple] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.729f,0.518f,0.973f], scale:1f} ^ ^ ^ 0.3 1 0.3 0.001 500 force

execute at @e[tag=mtp] run execute if entity @p[tag=wicked,tag=dark_purple] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.565f,0.184f,1f], scale:1f} ^ ^ ^ 0.3 1 0.3 0.001 500 force
execute at @e[tag=mtp] run execute if entity @p[tag=wicked,tag=dark_purple] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.565f,0.184f,1f], scale:1f} ^ ^ ^ 0.3 1 0.3 0.001 500 force

execute at @e[tag=mtp] run execute if entity @p[tag=wicked,tag=dark_gray] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.533f,0.533f,0.533f], scale:1f} ^ ^ ^ 0.3 1 0.3 0.001 500 force
execute at @e[tag=mtp] run execute if entity @p[tag=wicked,tag=dark_gray] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.533f,0.533f,0.533f], scale:1f} ^ ^ ^ 0.3 1 0.3 0.001 500 force

execute at @e[tag=mtp] run execute if entity @p[tag=wicked,tag=black] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.051f,0.008f,0.102f], scale:1f} ^ ^ ^ 0.3 1 0.3 0.001 500 force
execute at @e[tag=mtp] run execute if entity @p[tag=wicked,tag=black] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.051f,0.008f,0.102f], scale:1f} ^ ^ ^ 0.3 1 0.3 0.001 500 force

execute at @e[tag=mtp] run execute if entity @p[tag=wicked,tag=dark_green] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.498f,1f,0.345f], scale:1f} ^ ^ ^ 0.3 1 0.3 0.001 500 force
execute at @e[tag=mtp] run execute if entity @p[tag=wicked,tag=dark_green] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust{color: [0.498f,1f,0.345f], scale:1f} ^ ^ ^ 0.3 1 0.3 0.001 500 force

execute as @e[tag=telp,limit=1,sort=nearest] at @s run function wicked:poofing/loop
execute as @e[tag=telp,limit=1,sort=nearest] at @s run function wicked:poofing/effect2
scoreboard players set @s click 0