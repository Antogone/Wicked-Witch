# By Bomerie


kill @e[tag=telpe]
execute as @e[tag=wicked,scores={click=1..,magie=10..}] at @s run summon marker ~ ~ ~ {Tags:[telpe]}


execute as @a[scores={magie=..9},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the spell ! (cost : 10)","color":"dark_green"}

scoreboard players remove @e[tag=wicked,scores={magie=10..}] magie 10
scoreboard players set @s click 0
tp @e[tag=telpe,limit=1,sort=nearest] @s
tp @e[tag=telpe,limit=1,sort=nearest] ~ ~1.5 ~
execute as @e[tag=telpe,limit=1,sort=nearest] at @s run function loope
execute at @e[tag=wicked] run kill @e[tag=telpe,distance=51..]

