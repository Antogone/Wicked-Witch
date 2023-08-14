

execute at @e[distance=..10,limit=10,sort=nearest,type=!marker,tag=!wicked,type=!item] run summon marker ~ ~ ~ {NoGravity:1b,duration:500,Tags:[fix]}
execute as @e[tag=wicked,scores={magie=10..}] if entity @e[tag=fix] at @s run scoreboard players remove @e[tag=wicked,scores={magie=10..}] magie 10
scoreboard players set @e[tag=wicked,scores={click=1..}] click 0
tag @a[tag=wicked] add fixa
