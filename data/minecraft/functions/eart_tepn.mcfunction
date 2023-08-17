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

# Teleport player
tp @p[tag=wicked,limit=1] @s
effect give @p[tag=wicked] slow_falling 10 5 true

# Remove marker
kill @s

execute at @a[tag=wicked] run function particle 
execute at @a[tag=wicked] run schedule function particle 10t

execute at @a[tag=wicked] as @a[tag=wicked] align x align z run spreadplayers ~ ~ 20 5 true @s

execute at @p[tag=wicked] run function particle 
execute at @p[tag=wicked] run function particle 
execute at @p[tag=wicked] run function particle 
execute at @p[tag=wicked] run schedule function particle 10t
execute at @p[tag=wicked] run schedule function phase 1s