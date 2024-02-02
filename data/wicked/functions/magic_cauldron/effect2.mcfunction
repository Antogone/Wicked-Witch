##
 # effect2.mcfunction
 # 
 #
 # Created by Antogone.
##

execute at @e[type=minecraft:interaction,tag=chunklock] align xyz if entity @e[type=block_display,tag=effect1] run summon block_display ~ ~ ~ {transformation:{translation:[0.1f,0.2f,0.1f],left_rotation:[0f,0f,0f,1f],scale:[0.8f,0.7f,0.8f],right_rotation:[0f,0f,0f,1f]},block_state:{Name:"minecraft:red_stained_glass"},Tags:["effect2"]}

execute at @e[type=minecraft:interaction,tag=chunklock] align xyz if entity @e[type=block_display,tag=effect2] run kill @e[tag=effect1]