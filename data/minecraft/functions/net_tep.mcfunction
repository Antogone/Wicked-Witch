##
 # net_tep.mcfunction
 # 
 #
 # Created by .
##
effect give @e[scores={equip=1,choose=0..5}] blindness 3 255 true

execute at @a[tag=wicked] if entity @e[type=!#dontharm,distance=..300,sort=nearest,limit=1] run teleport @a[tag=wicked] @e[tag=!wicked,type=!#dontharm,distance=..300,sort=nearest,limit=1]
execute at @a[tag=wicked] unless entity @e[tag=!wicked,type=!#dontharm,distance=..300,sort=nearest,limit=1] align x align z run fill ~-1 ~-1 ~1 ~1 ~2 ~-1 netherrack hollow
schedule function particle 3t
