#By Antogone
tag @s add tp
kill @e[type=marker,tag=telp]

execute at @s run summon marker ~ ~ ~ {duration:1,Tags:[telp]}

tp @e[tag=telp,limit=1,sort=nearest] @s
tp @e[tag=telp,limit=1,sort=nearest] ~ ~1.5 ~
execute as @e[tag=telp,limit=1,sort=nearest] at @s run function wicked:poofing/loop 
execute at @s if entity @e[tag=telp] run particle minecraft:dust 0.498 1 0.345 1 ~ ~ ~ 0.3 1 0.3 0.001 500 force
execute at @s if entity @e[tag=telp] run particle minecraft:dust 0.498 1 0.345 1 ~ ~ ~ 0.3 1 0.3 0.001 500 force


execute as @e[tag=telp,limit=1,sort=nearest] at @s run function wicked:poofing/effect
scoreboard players set @s click 0