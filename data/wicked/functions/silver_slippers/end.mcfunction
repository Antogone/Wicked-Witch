
execute if dimension the_end run return 0


execute as @p[scores={equip=1,choose=2},tag=wicked] at @s run execute as @e[predicate=wicked:accompagnant,distance=..3] run execute in the_end run tp 5 67 5
execute as @p[scores={equip=1,choose=2},tag=wicked] in the_end run tp 5 67 5


effect give @e[scores={equip=1,choose=0..5}] blindness 4 255 true

execute as @p[scores={equip=1,choose=2},tag=wicked] at @s anchored eyes run particle cloud ^ ^ ^ 0.5 -1 0.5 0.1 150
scoreboard players set @p[tag=wicked] choose -1


scoreboard players set @a[scores={equip=0,choose=0..2}] choose -1
scoreboard players set @a[scores={s=1..}] s 0

schedule function wicked:particle 3t
execute at @p[tag=wicked] run function wicked:particle 
execute at @p[tag=wicked] run function wicked:particle 
execute at @p[tag=wicked] run function wicked:particle 

execute at @e[tag=accp] run function wicked:particle 
execute at @e[tag=accp] run function wicked:particle 
execute at @e[tag=accp] run function wicked:particle 

playsound minecraft:entity.enderman.teleport master @a
