
effect give @s[tag=wicked] resistance 10 255 true
effect give @s[tag=wicked] fire_resistance 10 255 true
effect give @s[tag=wicked] slow_falling 10 255 true

effect give @s[tag=!wicked,type=!#minecraft:dontharm] slowness 10 1 true
effect give @s[tag=!wicked,type=!#minecraft:dontharm] mining_fatigue 10 255 true
effect give @s[tag=!wicked,type=!#minecraft:dontharm] glowing 10 255 true
effect give @s[tag=!wicked,type=!#minecraft:dontharm] weakness 10 1 true

execute as @s[tag=!wicked,type=!#minecraft:dontharm] at @s run particle witch ^ ^ ^ 0.3 1 0.3 50 3 force
