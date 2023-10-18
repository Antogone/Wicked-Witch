#by Antogone
execute as @s at @s if block ~ ~ ~ #minecraft:ray_permeable run tp @s ^ ^ ^0.7

execute as @s at @s if entity @e[tag=wall,distance=..1] run tp @s ^ ^ ^1
execute at @a[tag=wicked,tag=tp] as @e[tag=telp,distance=300] run function wicked:poofing/effect
execute at @a[tag=wicked,tag=tp] run kill @e[tag=telp,distance=301..]


execute as @s at @s if block ~ ~ ~ #minecraft:ray_permeable run function wicked:poofing/loop

execute as @s at @s if entity @e[tag=wall,distance=..1] run function wicked:poofing/loop