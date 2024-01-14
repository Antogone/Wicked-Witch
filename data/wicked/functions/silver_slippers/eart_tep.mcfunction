#eart_tep.mcfunction


effect give @p[tag=wicked,scores={equip=1,choose=0..5}] blindness 2 255 true

execute at @p[tag=wicked] run tag @e[predicate=wicked:accompagnant,distance=..3] add accp
data modify entity @s Pos set from entity @p[tag=wicked] Pos


# Teleport player
tp @p[tag=wicked,limit=1] @s

effect give @p[tag=accp] fire_resistance 10 5 true
effect give @p[tag=accp] slow_falling 10 5 true

effect give @e[tag=accp] fire_resistance 10 5 true
effect give @e[tag=accp] slow_falling 10 5 true

# Remove marker
kill @s

execute at @p[tag=wicked] run function wicked:particle 
execute at @p[tag=wicked] run schedule function wicked:particle 10t

execute at @e[tag=accp] run function wicked:particle 
execute at @e[tag=accp] run schedule function wicked:particle 10t


execute at @a[tag=wicked] as @a[tag=wicked] align x align z run spreadplayers ~ ~ 20 5 true @s
tp @e[tag=accp] @p[tag=wicked,limit=1]


execute at @p[tag=wicked] run function wicked:particle 
execute at @p[tag=wicked] run function wicked:particle 
execute at @p[tag=wicked] run function wicked:particle 

execute at @e[tag=accp] run function wicked:particle 
execute at @e[tag=accp] run function wicked:particle 
execute at @e[tag=accp] run function wicked:particle 

playsound minecraft:entity.enderman.teleport master @a

tag @e[tag=accp,type=!cat] remove accp