
execute as @e[scores={equip=1,choose=1}] at @s in the_nether run teleport ~ ~ ~
effect give @e[scores={equip=1,choose=0..5}] blindness 6 255 true
execute as @a[scores={equip=1,choose=1}] at @s run schedule function net_tep 3s
execute as @e[scores={equip=1,choose=1}] at @s anchored eyes run particle cloud ^ ^ ^ 0.5 -1 0.5 0.1 150
effect give @e[scores={equip=1,choose=1}] fire_resistance 5 1 true
effect give @e[scores={equip=1,choose=1}] slow_falling 5 1 true

scoreboard players set @a[scores={equip=1}] choose -1
scoreboard players set @a[scores={s=1..}] s 0