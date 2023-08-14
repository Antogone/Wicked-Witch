
summon area_effect_cloud ~ ~ ~ {Tags:["et"],duration:1}
# execute at @e[tag=et] run execute as @e[scores={equip=1,choose=0}] in overworld run tp @s -764.52 65.00 132.70 -1.70 3.87
execute at @e[tag=et] run execute as @e[scores={equip=1,choose=0}] in overworld run tp @s ~ ~ ~
effect give @e[scores={equip=1,choose=0..5}] blindness 4 255 true

execute if entity @e[tag=et] run execute as @e[scores={equip=1,choose=0}] at @s run spreadplayers ~ ~ 150 10 false @s
execute if entity @e[tag=et] run execute as @e[scores={equip=1,choose=0}] at @s run fill ~ ~ ~ ~ ~1 ~ air
execute if entity @e[tag=et] run execute as @e[scores={equip=1,choose=0}] at @s anchored eyes run particle cloud ^ ^ ^ 0.5 -1 0.5 0.1 150
execute if entity @e[tag=et] run scoreboard players set @a[scores={equip=1,choose=0}] choose -1
kill @e[tag=et]

scoreboard players set @a[scores={equip=0,choose=0..2}] choose -1
scoreboard players set @a[scores={s=1..}] s 0
schedule function particle 3t
