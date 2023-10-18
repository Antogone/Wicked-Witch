summon item_display ~ ~1.5 ~ {Tags:["em_amp"],item_display:"none",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:emerald_block",Count:1b}}
summon area_effect_cloud ~ ~ ~ {Duration:18000,Tags:["d_amp"]}
kill @e[type=item,distance=..2]
data modify entity @e[tag=ampli,limit=1] Tags append value "active"

