#eart.mcfunction

execute if dimension overworld run return 0

execute as @e[scores={equip=1,choose=0..5}] at @s anchored eyes run particle cloud ^ ^ ^ 0.5 -1 0.5 0.1 150


scoreboard players set @a[scores={equip=1}] choose -1
scoreboard players set @a[scores={s=1..}] s 0
execute at @p[tag=wicked] run function wicked:particle
execute at @p[tag=wicked] run function wicked:particle
execute at @p[tag=wicked] run function wicked:particle 


execute if dimension the_nether run execute in minecraft:overworld summon marker run function wicked:silver_slippers/eart_tepn

execute in minecraft:overworld summon marker run function wicked:silver_slippers/eart_tep