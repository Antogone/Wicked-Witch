#By Bomerie

scoreboard players remove @e[tag=wicked,tag=tp,scores={magie=10..}] magie 10
execute at @s run particle minecraft:dust 0.498 1 0.345 1 ~ ~ ~ 0.3 1 0.3 0.1 200 force
execute at @s run particle minecraft:dust 0.498 1 0.345 1 ~ ~ ~ 0.3 1 0.3 0.1 200 force
execute as @e[tag=telp,limit=1,sort=nearest] at @s run teleport ^ ^ ^-0.8
execute as @e[tag=telp,limit=1,sort=nearest] at @s run teleport @a[tag=wicked,scores={sneak=0}] @s
execute as @e[tag=telp,limit=1,sort=nearest] at @s run teleport @a[tag=wicked,scores={sneak=1..}] @s
execute as @e[tag=wicked] at @s anchored feet run teleport @a[tag=wicked,scores={sneak=1..}] ^ ^ ^-0.6
execute as @e[tag=wicked] at @s run particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.3 1 0.3 0.001 200 force
execute as @e[tag=wicked] at @s run particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.3 1 0.3 0.001 200 force
execute as @e[tag=wicked] at @s run particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.3 1 0.3 50 100 force
execute as @e[tag=wicked] at @s run effect give @s slow_falling 5 10 true
playsound minecraft:entity.endermen.teleport master @a
tag @a[tag=tp] remove tp