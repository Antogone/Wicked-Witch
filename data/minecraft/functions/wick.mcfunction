
execute as @e[scores={equip=1,choose=3}] in minecraft:the_nether run tp @s 0 131 0
effect give @e[scores={equip=1,choose=0..5}] blindness 4 255 true
execute as @e[scores={equip=1,choose=3}] at @s anchored eyes run particle cloud ^ ^ ^ 0.5 -1 0.5 0.1 150
scoreboard players set @a[scores={equip=1,choose=3}] choose -1


scoreboard players set @a[scores={equip=0,choose=0..4}] choose -1
scoreboard players set @a[scores={s=1..}] s 0
schedule function particle 3t
