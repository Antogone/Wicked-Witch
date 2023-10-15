#By Bomerie

execute as @e[tag=mtp] run scoreboard players remove @e[tag=wicked,limit=1,scores={magie=10..}] magie 10
execute as @e[tag=telp,limit=1,sort=nearest] at @s run teleport ^ ^ ^-1
execute as @e[tag=telp,limit=1,sort=nearest] at @s run teleport @e[tag=mtp,limit=10] @s
execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] run particle minecraft:dust 0.498 1 0.345 1 ~ ~ ~ 0.5 1 0.5 0.001 300 force
execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] run particle minecraft:dust 0.498 1 0.345 1 ~ ~ ~ 0.5 1 0.5 0.001 300 force
execute as @e[tag=mtp,limit=5] at @e[tag=mtp,limit=5] run effect give @s slow_falling 5 10 true
execute as @e[tag=mtp] run tag @s remove mtp
playsound minecraft:entity.enderman.teleport master @a
