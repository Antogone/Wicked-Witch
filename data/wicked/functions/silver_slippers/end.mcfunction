
execute if dimension the_end run return 0


execute as @s at @s run execute as @e[predicate=wicked:accompagnant,distance=..3] run execute in the_end run tp 5 67 5
execute as @s in the_end run tp 5 65 5


effect give @s blindness 4 255 true

execute as @s at @s anchored eyes run particle cloud ^ ^ ^ 0.5 -1 0.5 0.1 150
scoreboard players set @s choose -1


scoreboard players set @s choose -1
scoreboard players set @s s 0

execute at @e[tag=accp] run function wicked:particle 
execute at @e[tag=accp] run function wicked:particle 
execute at @e[tag=accp] run function wicked:particle 

execute as @s run function wicked:particle
execute as @s run function wicked:particle
execute as @s run function wicked:particle

execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~
execute at @s run playsound entity.witch.celebrate master @s ~ ~ ~
