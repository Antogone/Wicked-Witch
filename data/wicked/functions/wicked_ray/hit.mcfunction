execute as @e[tag=ray,limit=1] if entity @p[tag=wicked,tag=dark_green] run execute as @e[tag=!ray,tag=!wicked,type=!#minecraft:dontharm,distance=..2,sort=nearest] run damage @s 16 minecraft:generic_kill by @p[tag=wicked]

execute as @e[tag=ray,limit=1] if entity @p[tag=wicked,tag=black] run execute as @e[tag=!ray,tag=!wicked,type=!#minecraft:dontharm,distance=..2,sort=nearest] run damage @s 14 minecraft:generic_kill by @p[tag=wicked]

execute as @e[tag=ray,limit=1] if entity @p[tag=wicked,tag=dark_gray] run execute as @e[tag=!ray,tag=!wicked,type=!#minecraft:dontharm,distance=..2,sort=nearest] run damage @s 10 minecraft:generic_kill by @p[tag=wicked]

execute as @e[tag=ray,limit=1] if entity @p[tag=wicked,tag=dark_purple] run execute as @e[tag=!ray,tag=!wicked,type=!#minecraft:dontharm,distance=..2,sort=nearest] run damage @s 8 minecraft:generic_kill by @p[tag=wicked]


execute as @e[tag=ray,limit=1] if entity @p[tag=wicked,tag=light_purple] run execute as @e[tag=!ray,tag=!wicked,type=!#minecraft:dontharm,distance=..2,sort=nearest] run damage @s 6 minecraft:generic_kill by @p[tag=wicked]




execute as @e[tag=ray,limit=1] run execute as @e[tag=!ray,tag=!wicked,type=!#minecraft:dontharm,distance=..2,sort=nearest] run effect give @s weakness 10 0 true
