
team add fix
team modify fix nametagVisibility always

            #     - 1) Witch  (Light Purple)
            #     - 2) Mystic Witch (dark purple)
            #     - 3) Occult Witch (dark gray)
            #     - 4) Dark Witch   (black)
            #     - 5) Wicked Witch (Dark green)

execute if entity @p[tag=wicked,tag=light_purple] run team modify fix color light_purple

execute if entity @p[tag=wicked,tag=dark_purple] run team modify fix color dark_purple

execute if entity @p[tag=wicked,tag=dark_gray] run team modify fix color dark_gray

execute if entity @p[tag=wicked,tag=black] run team modify fix color black

execute if entity @p[tag=wicked,tag=dark_green] run team modify fix color green




execute as @s run team join fix

effect give @s mining_fatigue 2 255 true
effect give @s nausea 2 255 true
effect give @s weakness 2 255 true
effect give @s slowness 2 255 true
# effect give @s jump_boost 2 190 true
# effect give @s levitation 1 255 true
attribute @s[type=player] generic.gravity base set 10000

effect give @s blindness 2 255 true

effect give @s darkness 2 255 true
effect give @s glowing 2 255 true

execute as @e[tag=fixa] at @s run execute as @e[distance=..1,type=!#dontharm,tag=!fix,team=fix,type=!player] run data merge entity @s {NoGravity:1b,Silent:1b,NoAI:1b,Motion:[0.0,0.0,0.0],Fuse:2000}





execute as @e[type=!#dontharm,team=fix] run function wicked:immobilization/particle

