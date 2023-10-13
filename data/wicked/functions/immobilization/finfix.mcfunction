execute as @e[tag=fix] at @s run execute as @e[distance=..2,type=!#dontharm,team=fix] run data merge entity @s {NoGravity:0b,Silent:0b,NoAI:0b,Fuse:30}
kill @e[tag=fix]
team remove fix