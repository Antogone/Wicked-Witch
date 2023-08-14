#By Bomerie
tag @s add tp
kill @e[type=marker,tag=telp]

execute as @e[tag=wicked,tag=tp,scores={magie=10..}] at @s run summon marker ~ ~ ~ {duration:1,Tags:[telp]}
execute as @e[tag=wicked,tag=tp,scores={magie=10..}] at @s run fill ~-10 ~-10 ~10 ~10 ~10 ~-10 air replace barrier
tp @e[tag=telp,limit=1,sort=nearest] @s
tp @e[tag=telp,limit=1,sort=nearest] ~ ~1.5 ~
execute as @e[tag=telp,limit=1,sort=nearest] at @s run fill ~-10 ~-10 ~10 ~10 ~10 ~-10 air replace barrier
execute as @e[tag=telp,limit=1,sort=nearest] at @s run function loop
execute at @s if entity @e[tag=telp] run particle minecraft:dust 0.498 1 0.345 1 ~ ~ ~ 0.3 1 0.3 0.001 500 force
execute at @s if entity @e[tag=telp] run particle minecraft:dust 0.498 1 0.345 1 ~ ~ ~ 0.3 1 0.3 0.001 500 force
# execute at @s if entity @e[tag=telp] run particle happy_villager ^ ^ ^ 0.5 1 0.5 50 250 force
execute as @e[tag=telp,limit=1,sort=nearest] at @s run function effect
scoreboard players set @s click 0