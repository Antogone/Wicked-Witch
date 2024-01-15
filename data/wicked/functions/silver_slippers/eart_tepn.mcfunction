#eart_tepn.mcfunction


effect give @p[tag=wicked,scores={equip=1,choose=0..5}] blindness 2 255 true
data modify storage wicked.tep Temp.Pos set value [0d,0d,0d]

execute store result score $x x_temp run data get entity @p[tag=wicked] Pos[0]
execute store result score $y y_temp run data get entity @p[tag=wicked] Pos[1]
execute store result score $z z_temp run data get entity @p[tag=wicked] Pos[2]


execute store result storage wicked.tep Temp.Pos[0] double 1 run scoreboard players operation $x x_temp *= $net net_value
execute store result storage wicked.tep Temp.Pos[1] double 1 run data get entity @p[tag=wicked] Pos[1]
execute store result storage wicked.tep Temp.Pos[2] double 1 run scoreboard players operation $z z_temp *= $net net_value

data modify entity @s Pos set from storage wicked.tep Temp.Pos


execute at @p[tag=wicked] run tag @e[predicate=wicked:accompagnant,distance=..3] add accp


# Teleport player
tp @p[tag=wicked,limit=1] @s
effect give @p[tag=wicked] slow_falling 10 5 true
effect give @e[tag=accp] slow_falling 10 5 true

# Remove marker
kill @s

execute at @a[tag=wicked] run function wicked:particle 
execute at @a[tag=wicked] run schedule function wicked:particle 10t



execute at @a[tag=wicked] as @a[tag=wicked] align x align z run spreadplayers ~ ~ 20 5 true @s

tp @e[tag=accp] @p[tag=wicked,limit=1]


execute at @p[tag=wicked] run function wicked:particle 
execute at @p[tag=wicked] run function wicked:particle 
execute at @p[tag=wicked] run function wicked:particle 

execute at @e[tag=accp] run function wicked:particle 
execute at @e[tag=accp] run function wicked:particle 
execute at @e[tag=accp] run function wicked:particle 

execute at @p[tag=wicked] run schedule function wicked:particle 10t
execute at @p[tag=wicked] run schedule function wicked:silver_slippers/phase 1s


execute at @e[tag=accp] run schedule function wicked:particle 10t


playsound minecraft:entity.enderman.teleport master @a

tag @e[tag=accp,type=!cat] remove accp