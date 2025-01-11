##
 # creation.mcfunction
 # 
 #
 # Created by Antogone.
##
execute as @a[scores={magie=..9},tag=wicked] run tellraw @s {"text":"You don't select enough magic to cast the spell !","color":"dark_green"}
execute as @a[scores={magie=..9},tag=wicked] run return 0



execute as @a[tag=wicked,scores={P=0,magie=10..}] at @s run summon item ~ ~1 ~ {Tags:["popo"],PickupDelay:5,Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_green","text":"Wicked Witch's Potion"},"minecraft:potion_contents":{potion:"minecraft:empty",custom_color:4063063}}}}

execute as @a[tag=wicked,scores={P=1,magie=10..}] at @s run summon item ~ ~1 ~ {Tags:["popo"],PickupDelay:5,Item:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_green","text":"Wicked Witch's Potion"},"minecraft:potion_contents":{potion:"minecraft:empty",custom_color:4063063}}}}


execute as @a[tag=wicked,scores={P=2,magie=10..}] at @s run summon item ~ ~1 ~ {Tags:["popo"],PickupDelay:5,Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_green","text":"Wicked Witch's Potion"},"minecraft:potion_contents":{potion:"minecraft:empty",custom_color:4063063}}}}

$data modify entity @e[type=item,limit=1,sort=nearest,tag=popo] Item.components.minecraft:potion_contents.custom_effects set value $(ancien)

particle minecraft:dust{color: [0.498f,1f,0.345f], scale:1f} ^ ^ ^ 0.5 1 0.5 10 100
particle minecraft:dust{color: [0.498f,1f,0.345f], scale:1f} ^ ^ ^ 0.5 1 0.5 10 100

function wicked:potion_book/undo
scoreboard players remove @p[tag=wicked] magie 10