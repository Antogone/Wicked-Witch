#house.mcfunction


execute as @e[scores={equip=1,choose=0..5}] at @s anchored eyes run particle cloud ^ ^ ^ 0.5 -1 0.5 0.1 150


scoreboard players set @a[scores={equip=1}] choose -1
scoreboard players set @a[scores={s=1..}] s 0
execute at @p[tag=wicked] run function particle
execute at @p[tag=wicked] run function particle

execute if entity @p[tag=house_ow] run execute in minecraft:overworld summon marker run function ow_house
execute if entity @p[tag=house_end] run execute in minecraft:the_end summon marker run function end_house
execute if entity @p[tag=house_net] run execute in minecraft:the_nether summon marker run function net_house