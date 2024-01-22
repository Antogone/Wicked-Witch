#By Antogone
tag @s add tp
kill @e[type=marker,tag=telp]

execute at @s run summon marker ~ ~ ~ {duration:1,Tags:[telp]}

tp @e[tag=telp,limit=1,sort=nearest] @s
tp @e[tag=telp,limit=1,sort=nearest] ~ ~1.5 ~
execute as @e[tag=telp,limit=1,sort=nearest] at @s run function wicked:poofing/loop 






execute at @s if entity @e[tag=telp] run execute if entity @p[tag=wicked,tag=light_purple] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust 0.729 0.518 0.973 1 ^ ^ ^ 0.3 1 0.3 0.001 500 force
execute at @s if entity @e[tag=telp] run execute if entity @p[tag=wicked,tag=light_purple] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust 0.729 0.518 0.973 1 ^ ^ ^ 0.3 1 0.3 0.001 500 force

execute at @s if entity @e[tag=telp] run execute if entity @p[tag=wicked,tag=dark_purple] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust 0.431 0.071 0.839 1 ^ ^ ^ 0.3 1 0.3 0.001 500 force
execute at @s if entity @e[tag=telp] run execute if entity @p[tag=wicked,tag=dark_purple] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust 0.431 0.071 0.839 1 ^ ^ ^ 0.3 1 0.3 0.001 500 force

execute at @s if entity @e[tag=telp] run execute if entity @p[tag=wicked,tag=dark_gray] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust 0.533 0.533 0.533 1 ^ ^ ^ 0.3 1 0.3 0.001 500 force
execute at @s if entity @e[tag=telp] run execute if entity @p[tag=wicked,tag=dark_gray] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust 0.533 0.533 0.533 1 ^ ^ ^ 0.3 1 0.3 0.001 500 force

execute at @s if entity @e[tag=telp] run execute if entity @p[tag=wicked,tag=black] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust 0.051 0.008 0.102 1 ^ ^ ^ 0.3 1 0.3 0.001 500 force
execute at @s if entity @e[tag=telp] run execute if entity @p[tag=wicked,tag=black] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust 0.051 0.008 0.102 1 ^ ^ ^ 0.3 1 0.3 0.001 500 force

execute at @s if entity @e[tag=telp] run execute if entity @p[tag=wicked,tag=dark_green] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.3 1 0.3 0.001 500 force
execute at @s if entity @e[tag=telp] run execute if entity @p[tag=wicked,tag=dark_green] run execute as @e[tag=wicked,limit=1] at @s run particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.3 1 0.3 0.001 500 force


execute as @e[tag=telp,limit=1,sort=nearest] at @s run function wicked:poofing/effect
scoreboard players set @s click 0