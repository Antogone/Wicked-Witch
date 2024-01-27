##
 # creation.mcfunction
 # 
 #
 # Created by Antogone.
##
execute as @a[scores={magie=..9},tag=wicked] run tellraw @s {"text":"You don't select enough magic to cast the spell !","color":"dark_green"}
execute as @a[scores={magie=..9},tag=wicked] run return 0

execute as @a[tag=wicked,scores={P=0,magie=10..}] at @s run summon item ~ ~1 ~ {Tags:["popo"],Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:"{\"text\":\"§2Wicked Witch's Potion\"}"},CustomPotionColor:6415943,Enchantments:[{}]}},PickupDelay:5}

execute as @a[tag=wicked,scores={P=1,magie=10..}] at @s run summon item ~ ~1 ~ {Tags:["popo"],Item:{id:"minecraft:lingering_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§2Wicked Witch's Potion\"}"},CustomPotionColor:6415943,Enchantments:[{}]}},PickupDelay:5}


execute as @a[tag=wicked,scores={P=2,magie=10..}] at @s run summon item ~ ~1 ~ {Tags:["popo"],Item:{id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§2Wicked Witch's Potion\"}"},CustomPotionColor:6415943,Enchantments:[{}]}},PickupDelay:5}

$data modify entity @e[type=item,limit=1,sort=nearest,tag=popo] Item.tag.custom_potion_effects set value $(ancien)

particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.5 1 0.5 10 100
particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.5 1 0.5 10 100

function wicked:potion_book/undo
scoreboard players remove @p[tag=wicked] magie 10