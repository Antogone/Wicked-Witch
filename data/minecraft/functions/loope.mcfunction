# by Bomerie
#loope.mcfunction

execute as @s run particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.15 0.15 0.15 10 1 force

execute as @s[tag=telpe] run execute as @e[tag=!telpe,tag=!wicked,type=!#dontharm,distance=..2,sort=nearest] run damage @s 14 minecraft:magic by @p[tag=wicked]
execute as @s[tag=telpe] run execute as @e[tag=!telpe,tag=!wicked,type=!#dontharm,distance=..2,sort=nearest] run effect give @s weakness 10 0 true

# CHARGE
# execute as @s if score @p[tag=wicked] charge matches 18..22 run particle minecraft:dust 0.541 0.345 1 1 ^ ^ ^ 0.15 0.15 0.15 10 1 force
# execute as @s[tag=telpe] unless score @p[tag=wicked] charge matches 0..5 run execute as @e[tag=!telpe,tag=!wicked,type=!#dontharm,distance=..2,sort=nearest] run damage @s 14 minecraft:magic by @p[tag=wicked]
# execute as @s[tag=telpe] unless score @p[tag=wicked] charge matches 6..8 run execute as @e[tag=!telpe,tag=!wicked,type=!#dontharm,distance=..2,sort=nearest] run damage @s 20 minecraft:magic by @p[tag=wicked]
# execute as @s[tag=telpe] unless score @p[tag=wicked] charge matches 9..12 run execute as @e[tag=!telpe,tag=!wicked,type=!#dontharm,distance=..2,sort=nearest] run damage @s 26 minecraft:magic by @p[tag=wicked]
# execute as @s[tag=telpe] unless score @p[tag=wicked] charge matches 13..15 run execute as @e[tag=!telpe,tag=!wicked,type=!#dontharm,distance=..2,sort=nearest] run damage @s 32 minecraft:magic by @p[tag=wicked]
# execute as @s[tag=telpe] unless score @p[tag=wicked] charge matches 16..18 run execute as @e[tag=!telpe,tag=!wicked,type=!#dontharm,distance=..2,sort=nearest] run damage @s 38 minecraft:magic by @p[tag=wicked]
# execute as @s[tag=telpe] unless score @p[tag=wicked] charge matches 19..22 run execute as @e[tag=!telpe,tag=!wicked,type=!#dontharm,distance=..2,sort=nearest] run damage @s 100000 minecraft:magic by @p[tag=wicked]
# execute as @s[tag=telpe] run execute as @e[tag=!telpe,tag=!wicked,type=!#dontharm,distance=..2,sort=nearest] run damage @s 14 minecraft:magic by @p[tag=wicked]


kill @s

execute as @s at @s if block ~ ~ ~ air run tp @s ^ ^ ^0.01
execute as @s at @s if block ~ ~ ~ cave_air run tp @s ^ ^ ^0.01
execute as @s at @s if block ~ ~ ~ water run tp @s ^ ^ ^0.01
execute as @s at @s if block ~ ~ ~ barrier run tp @s ^ ^ ^0.01

kill @s

execute as @s at @s if block ~ ~ ~ air run function loope
execute as @s at @s if block ~ ~ ~ cave_air run function loope
execute as @s at @s if block ~ ~ ~ water run function loope
execute as @s at @s if block ~ ~ ~ barrier run function loope
# scoreboard players set @p[tag=wicked] charge 0

kill @e[tag=telpe,nbt={OnGround:1b}]

  