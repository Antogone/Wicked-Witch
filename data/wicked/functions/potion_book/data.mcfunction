#data.mcfunction


data modify entity @e[type=item,limit=1,sort=nearest,tag=popo] Item.tag.custom_potion_effects[0].id set from storage wicked.potion PotionId[0]
data modify entity @e[type=item,limit=1,sort=nearest,tag=popo] Item.tag.custom_potion_effects[1].id set from storage wicked.potion PotionId[1]
data modify entity @e[type=item,limit=1,sort=nearest,tag=popo] Item.tag.custom_potion_effects[2].id set from storage wicked.potion PotionId[2]
data modify entity @e[type=item,limit=1,sort=nearest,tag=popo] Item.tag.custom_potion_effects[3].id set from storage wicked.potion PotionId[3]
data modify entity @e[type=item,limit=1,sort=nearest,tag=popo] Item.tag.custom_potion_effects[4].id set from storage wicked.potion PotionId[4]
data modify entity @e[type=item,limit=1,sort=nearest,tag=popo] Item.tag.custom_potion_effects[5].id set from storage wicked.potion PotionId[5]
data modify entity @e[type=item,limit=1,sort=nearest,tag=popo] Item.tag.custom_potion_effects[6].id set from storage wicked.potion PotionId[6]
data modify entity @e[type=item,limit=1,sort=nearest,tag=popo] Item.tag.custom_potion_effects[7].id set from storage wicked.potion PotionId[7]


execute as @e[type=item,limit=1,sort=nearest] store result entity @s Item.tag.custom_potion_effects[0].duration int 1 run scoreboard players get @a[tag=wicked,scores={C=1,magie=10..},limit=1] D1
execute as @e[type=item,limit=1,sort=nearest] store result entity @s Item.tag.custom_potion_effects[1].duration int 1 run scoreboard players get @a[tag=wicked,scores={C=1,magie=10..},limit=1] D2
execute as @e[type=item,limit=1,sort=nearest] store result entity @s Item.tag.custom_potion_effects[2].duration int 1 run scoreboard players get @a[tag=wicked,scores={C=1,magie=10..},limit=1] D3
execute as @e[type=item,limit=1,sort=nearest] store result entity @s Item.tag.custom_potion_effects[3].duration int 1 run scoreboard players get @a[tag=wicked,scores={C=1,magie=10..},limit=1] D4
execute as @e[type=item,limit=1,sort=nearest] store result entity @s Item.tag.custom_potion_effects[4].duration int 1 run scoreboard players get @a[tag=wicked,scores={C=1,magie=10..},limit=1] D5
execute as @e[type=item,limit=1,sort=nearest] store result entity @s Item.tag.custom_potion_effects[5].duration int 1 run scoreboard players get @a[tag=wicked,scores={C=1,magie=10..},limit=1] D6
execute as @e[type=item,limit=1,sort=nearest] store result entity @s Item.tag.custom_potion_effects[6].duration int 1 run scoreboard players get @a[tag=wicked,scores={C=1,magie=10..},limit=1] D7
execute as @e[type=item,limit=1,sort=nearest] store result entity @s Item.tag.custom_potion_effects[7].duration int 1 run scoreboard players get @a[tag=wicked,scores={C=1,magie=10..},limit=1] D8



execute as @e[type=item,limit=1,sort=nearest] store result entity @s Item.tag.custom_potion_effects[0].amplifier int 1 run scoreboard players get @a[tag=wicked,scores={C=1,magie=10..},limit=1] A1
execute as @e[type=item,limit=1,sort=nearest] store result entity @s Item.tag.custom_potion_effects[1].amplifier int 1 run scoreboard players get @a[tag=wicked,scores={C=1,magie=10..},limit=1] A2
execute as @e[type=item,limit=1,sort=nearest] store result entity @s Item.tag.custom_potion_effects[2].amplifier int 1 run scoreboard players get @a[tag=wicked,scores={C=1,magie=10..},limit=1] A3
execute as @e[type=item,limit=1,sort=nearest] store result entity @s Item.tag.custom_potion_effects[3].amplifier int 1 run scoreboard players get @a[tag=wicked,scores={C=1,magie=10..},limit=1] A4
execute as @e[type=item,limit=1,sort=nearest] store result entity @s Item.tag.custom_potion_effects[4].amplifier int 1 run scoreboard players get @a[tag=wicked,scores={C=1,magie=10..},limit=1] A5
execute as @e[type=item,limit=1,sort=nearest] store result entity @s Item.tag.custom_potion_effects[5].amplifier int 1 run scoreboard players get @a[tag=wicked,scores={C=1,magie=10..},limit=1] A6
execute as @e[type=item,limit=1,sort=nearest] store result entity @s Item.tag.custom_potion_effects[6].amplifier int 1 run scoreboard players get @a[tag=wicked,scores={C=1,magie=10..},limit=1] A7
execute as @e[type=item,limit=1,sort=nearest] store result entity @s Item.tag.custom_potion_effects[7].amplifier int 1 run scoreboard players get @a[tag=wicked,scores={C=1,magie=10..},limit=1] A8
