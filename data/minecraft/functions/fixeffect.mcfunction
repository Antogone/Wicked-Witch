
team add fix
team modify fix nametagVisibility always
team modify fix color green

execute as @e[distance=0..2,tag=!wicked,tag=!wall,tag=!top1,type=!#dontharm] run team join fix
effect give @e[distance=..1,tag=!wicked,tag=!wall,tag=!top1] mining_fatigue 2 255 true
effect give @e[distance=..1,tag=!wicked,tag=!wall,tag=!top1] nausea 2 255 true
effect give @e[distance=..1,tag=!wicked,tag=!wall,tag=!top1] weakness 2 255 true
effect give @e[distance=..1,tag=!wicked,tag=!wall,tag=!top1] slowness 2 255 true
effect give @e[distance=..1,tag=!wicked,tag=!wall,tag=!top1] jump_boost 2 190 true
effect give @e[distance=..1,tag=!wicked,tag=!wall,tag=!top1] darkness 2 255 true
effect give @e[distance=..1,tag=!wicked,tag=!wall,tag=!top1,type=!#dontharm] glowing 2 255 true

execute as @e[tag=fix] at @s run execute as @e[distance=..1,type=!#dontharm,tag=!fix] run data merge entity @s {NoGravity:1b,Silent:1b,NoAI:1b,Motion:[0.0,0.0,0.0],Fuse:2000}
execute as @e[tag=fix] at @s run execute as @e[distance=..1,type=!#dontharm] run particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.3 1 0.3 50 3 force


