#By Bomerie
#cast2.mcfunction

kill @e[type=marker,tag=telp]
execute as @e[tag=wicked,scores={click=1..,magie=10..},predicate=wicked:is_sneaking] at @s run summon marker ~ ~ ~ {duration:1,Tags:[telp]}
tp @e[tag=telp,limit=1,sort=nearest] @s
tp @e[tag=telp,limit=1,sort=nearest] ~ ~1.5 ~
execute as @e[tag=telp,limit=1,sort=nearest] at @s run tag @e[type=!#dontharm,distance=..5,tag=!wicked,tag=!door,tag=!telp,tag=!wall,tag=!top1,team=!fix] add mtp
execute at @e[tag=mtp] run particle minecraft:dust 0.498 1 0.345 1 ~ ~ ~ 0.5 1 0.5 0.001 100 force
execute at @e[tag=mtp] run particle minecraft:dust 0.498 1 0.345 1 ~ ~ ~ 0.5 1 0.5 0.001 100 force
execute as @e[tag=telp,limit=1,sort=nearest] at @s run function wicked:poofing/loop
execute as @e[tag=telp,limit=1,sort=nearest] at @s run function wicked:poofing/effect2
scoreboard players set @s click 0