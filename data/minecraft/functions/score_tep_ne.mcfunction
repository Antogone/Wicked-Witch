#score_tep_ne.mcfunction

# Relocate marker to Waystone
data modify storage wicked.tep Temp.Pos set value [0d,0d,0d]
execute store result storage wicked.tep Temp.Pos[0] double 1 run data get entity @p[tag=wicked] Pos[0]
execute store result storage wicked.tep Temp.Pos[1] double 1 run data get entity @p[tag=wicked] Pos[1]
execute store result storage wicked.tep Temp.Pos[2] double 1 run data get entity @p[tag=wicked] Pos[2]
data modify entity @s Pos set from storage wicked.tep Temp.Pos

# Teleport player
tp @p[tag=wicked,limit=1] @s

# Remove marker
kill @s