
        # // "wicked:amplificator/amplificator"



execute at @e[tag=ampli] unless entity @e[tag=active] if entity @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:1b}},distance=..2] run function wicked:amplificator/setampli
execute at @e[tag=active] run function wicked:cauldron/particle/alchemymod_shield

execute as @e[scores={select=1},tag=wicked] at @s if entity @e[tag=active,distance=..150] run effect give @s regeneration 10 4 true
execute as @e[scores={select=1},tag=wicked] at @s if entity @e[tag=active,distance=..150] run effect give @s resistance 10 4 true
execute as @e[scores={select=1},tag=wicked] at @s if entity @e[tag=active,distance=..150] run effect give @s strength 10 4 true


execute as @e[scores={select=0},tag=wicked] at @s if entity @e[tag=active,distance=..150] run effect give @s regeneration 10 4 true
execute as @e[scores={select=0},tag=wicked] at @s if entity @e[tag=active,distance=..150] run effect give @s resistance 10 4 true
execute as @e[scores={select=0},tag=wicked] at @s if entity @e[tag=active,distance=..150] run effect give @s strength 10 4 true

execute as @e[tag=wicked] at @e[tag=wicked] if entity @e[tag=active,distance=..150] run particle minecraft:dust 0.498 1 0.345 1 ~ ~1 ~ 0.4 -0.3 0.4 0.0001 1 force
execute unless entity @e[tag=d_amp,limit=1] run function wicked:amplificator/finampli