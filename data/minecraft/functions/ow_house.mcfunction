##
 # ow_house.mcfunction
 # 
 #
 # Created by .
##
effect give @e[scores={equip=1,choose=0..5}] blindness 4 255 true

tp @a[tag=house_ow] @e[tag=house_ow,limit=1,type=marker]
schedule function particle 3t