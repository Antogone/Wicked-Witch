#phase.mcfunction
execute as @p[tag=phase] at @s run function wicked:particle
execute as @p[tag=phase] at @s run function wicked:particle

execute as @p[tag=phase] at @s align x align z unless block ~ ~1 ~ #minecraft:phasing run fill ~-1 ~ ~1 ~1 ~1 ~-1 air

execute as @p[tag=phase] at @s align x align z if block ~ ~-2 ~ #minecraft:phasing if block ~ ~-1 ~ #minecraft:phasing run fill ~-1 ~-1 ~1 ~1 ~-1 ~-1 lime_stained_glass keep

execute as @p[tag=phase] at @s run function wicked:particle
execute as @p[tag=phase] at @s run function wicked:particle
tag @p[tag=phase] remove phase