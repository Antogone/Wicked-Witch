
team add fix
team modify fix nametagVisibility always
team modify fix color green

execute as @s run team join fix

effect give @s mining_fatigue 2 255 true
effect give @s nausea 2 255 true
effect give @s weakness 2 255 true
effect give @s slowness 2 255 true
effect give @s jump_boost 2 190 true
effect give @s darkness 2 255 true
effect give @s glowing 2 255 true

execute as @e[tag=fixa] at @s run execute as @e[distance=..1,type=!#dontharm,tag=!fix,team=fix,type=!player] run data merge entity @s {NoGravity:1b,Silent:1b,NoAI:1b,Motion:[0.0,0.0,0.0],Fuse:2000}
execute as @e[type=!#dontharm,team=fix] run particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.3 1 0.3 50 3 force


