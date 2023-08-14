

execute as @a[scores={equip=1,choose=4},tag=house_ow] at @s in minecraft:overworld run tp @s ~ ~200 ~
execute as @a[scores={equip=1,choose=4},tag=house_ow] at @s in minecraft:overworld run schedule function ow_house 3s

execute as @a[scores={equip=1,choose=4},tag=house_end] at @s in minecraft:the_end run tp @s ~ ~200 ~
execute as @a[scores={equip=1,choose=4},tag=house_end] at @s in minecraft:the_end run schedule function end_house 3s


execute as @a[scores={equip=1,choose=4},tag=house_net] at @s in minecraft:the_nether run tp @s ~ ~200 ~
execute as @a[scores={equip=1,choose=4},tag=house_net] at @s in minecraft:the_nether run schedule function net_house 3s


effect give @a[tag=house_net] slow_falling 5 1 true
effect give @a[tag=house_end] slow_falling 5 1 true
effect give @a[tag=house_ow] slow_falling 5 1 true

effect give @a[tag=house_net] fire_resistance 5 1 true
effect give @a[tag=house_end] fire_resistance 5 1 true
effect give @a[tag=house_ow] fire_resistance 5 1 true

effect give @e[scores={equip=1,choose=0..5}] blindness 4 255 true


execute as @e[scores={equip=1,choose=4}] at @s anchored eyes run particle cloud ^ ^ ^ 0.5 -1 0.5 0.1 150
scoreboard players set @a[scores={equip=1,choose=4}] choose -1

scoreboard players set @a[scores={equip=0,choose=0..4}] choose -1
scoreboard players set @a[scores={s=1..}] s 0

