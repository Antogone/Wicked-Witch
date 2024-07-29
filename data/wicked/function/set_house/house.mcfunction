#house.mcfunction


execute as @s at @s anchored eyes run particle cloud ^ ^ ^ 0.5 -1 0.5 0.1 150


scoreboard players set @s choose -1
scoreboard players set @s s 0

execute at @s run tag @e[predicate=wicked:accompagnant,distance=..3] add accp

execute at @s run function wicked:particle
execute at @s run function wicked:particle


function wicked:set_house/teleport with storage wicked.tep house


