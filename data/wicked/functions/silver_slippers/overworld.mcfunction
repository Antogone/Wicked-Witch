#eart.mcfunction

execute if dimension overworld run return 0

execute at @s anchored eyes run particle cloud ^ ^ ^ 0.5 -1 0.5 0.1 150

scoreboard players set @s choose -1
scoreboard players set @s s 0
execute at @s run function wicked:particle
execute at @s run function wicked:particle
execute at @s run function wicked:particle

execute as @s run function wicked:silver_slippers/overworld_tep


