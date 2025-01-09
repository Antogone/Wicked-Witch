##
 # take_heart.mcfunction
 # 
 #
 # Created by Antogone.
##

advancement revoke @s only wicked:take_heart

execute at @s unless entity @e[type=!#dontharm,distance=..1,limit=1,tag=!wicked,tag=!no_heart,sort=nearest] run tellraw @s {"text":"Entity too far away","color":"dark_green"}
execute at @s unless entity @e[type=!#dontharm,distance=..1,limit=1,tag=!wicked,tag=!no_heart,sort=nearest] run return 0


execute as @s run item replace entity @s weapon.mainhand with air

# summon item ~ ~ ~ {Tags:["heart"],Item:{id:"minecraft:potion",Count:1b,tag:{uuid:[],heart:1b,CustomModelData: 10140006,display:{Name:'{"text":"Heart","color":"dark_red","bold":true,"italic":true}'}}}}

summon item ~ ~ ~ {Tags:["heart"],Item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","italic":true,"text":"Heart"},"minecraft:custom_model_data":{floats:[10140006]},"minecraft:custom_data":{heart:1b},"minecraft:item_model": "minecraft:heart","minecraft:custom_data":{uuid:[]},"minecraft:consumable":{on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:regeneration",amplifier:1,duration:100,show_particles:0b,show_icon:1b,ambient:0b}]}]},"minecraft:food":{nutrition:1,saturation:1,can_always_eat:true}}}}

data modify entity @e[tag=heart,limit=1,sort=nearest] Item.components.minecraft:custom_data.uuid set from entity @e[type=!#dontharm,distance=..1,limit=1,tag=!wicked,tag=!no_heart,sort=nearest] UUID

effect give @e[type=!#dontharm,distance=..1,limit=1,tag=!wicked,sort=nearest] glowing 5 5 true
tag @e[type=!#dontharm,distance=..1,limit=1,tag=!wicked,sort=nearest] add no_heart
tellraw @s {"text":"Heart ripped out !","color":"dark_green"}