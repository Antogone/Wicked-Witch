#phase.mcfunction
execute at @p[tag=wicked] run function wicked:particle 
execute at @p[tag=wicked] run function wicked:particle 

execute at @a[tag=wicked] as @a[tag=wicked] align x align z unless block ~ ~ ~ #minecraft:phasing run fill ~-1 ~ ~1 ~1 ~1 ~-1 air
execute at @a[tag=wicked] as @a[tag=wicked] align x align z if block ~ ~-2 ~ #minecraft:phasing if block ~ ~-1 ~ #minecraft:phasing run fill ~-1 ~-1 ~1 ~1 ~-1 ~-1 lime_stained_glass keep



execute at @p[tag=wicked] run function wicked:particle 
execute at @p[tag=wicked] run function wicked:particle 
