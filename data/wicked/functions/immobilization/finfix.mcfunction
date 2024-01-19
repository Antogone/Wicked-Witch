execute as @e[tag=fixa,scores={clock=250..}] at @s run execute as @e[distance=..2,type=!#dontharm,team=fix] run data merge entity @s {NoGravity:0b,Silent:0b,NoAI:0b,Fuse:30}
execute as @e[tag=fixa,scores={clock=250..}] at @s run kill @e[tag=fix,distance=..2]
team remove fix