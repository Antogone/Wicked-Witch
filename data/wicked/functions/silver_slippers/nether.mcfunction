#net.mcfunction

execute if dimension the_nether run return 0
execute as @s at @s anchored eyes run particle cloud ^ ^ ^ 0.5 -1 0.5 0.1 150


scoreboard players set @s choose -1
scoreboard players set @s s 0
execute at @s run function wicked:particle
execute at @s run function wicked:particle
execute at @s run function wicked:particle

execute as @s run function wicked:silver_slippers/nether_tep
