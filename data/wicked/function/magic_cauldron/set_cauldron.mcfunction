##
 # set_cauldron.mcfunction
 # 
 #
 # Created by Antogone.
##
execute at @s align xyz run summon interaction ~ ~ ~ {width:1f, height: 1f, response: 1b, Tags: [chunklock],Passengers:[{id:"minecraft:marker",Tags:["mark"]}]}
execute at @e[type=minecraft:interaction,tag=chunklock] align xyz unless entity @e[type=block_display,tag=chaudron] run setblock ~ ~ ~ barrier
execute at @e[type=minecraft:interaction,tag=chunklock] align xyz unless entity @e[type=block_display,tag=chaudron] run summon block_display ~ ~ ~ {block_state:{Name:"minecraft:cauldron"},Tags:["chaudron"]}
execute at @e[type=minecraft:interaction,tag=chunklock] align xyz unless entity @e[tag=water] run summon block_display ~ ~ ~ {transformation:{translation:[0.1f,0.2f,0.1f],left_rotation:[0f,0f,0f,1f],scale:[0.8f,0.7f,0.8f],right_rotation:[0f,0f,0f,1f]},block_state:{Name:"minecraft:blue_stained_glass"},Tags:["water"]}

