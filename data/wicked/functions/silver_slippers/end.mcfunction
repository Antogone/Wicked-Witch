
execute if dimension the_end run return 0

summon area_effect_cloud ~ ~ ~ {Tags:["dt"],duration:1}
execute at @e[tag=dt] run execute as @e[scores={equip=1,choose=2}] in the_end run tp 0.5 66 0.5
execute if entity @e[tag=dt] run execute as @e[scores={equip=1,choose=2}] at @s run spreadplayers ~ ~ 2 5 false @s
effect give @e[scores={equip=1,choose=0..5}] blindness 4 255 true

execute if entity @e[tag=dt] run execute as @e[scores={equip=1,choose=2}] at @s anchored eyes run particle cloud ^ ^ ^ 0.5 -1 0.5 0.1 150
execute if entity @e[tag=dt] run scoreboard players set @a[scores={equip=1,choose=2}] choose -1
kill @e[tag=dt]
scoreboard players set @a[scores={equip=0,choose=0..2}] choose -1
scoreboard players set @a[scores={s=1..}] s 0
schedule function wicked:particle 3t
playsound minecraft:entity.enderman.teleport master @a
