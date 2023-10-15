##
 # c.mcfunction
 # 
 #
 # Created by Antogone.
##

execute as @a[tag=wicked,scores={C=1,P=0,magie=20..}] at @s run summon item ~ ~1 ~ {Tags:["popo"],Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:"{\"text\":\"§2Wicked Witch's Potion\"}"},CustomPotionColor:2327824,custom_potion_effects:[{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200}],Enchantments:[{}]}},PickupDelay:5}

execute as @a[tag=wicked,scores={C=1,P=1,magie=20..}] at @s run summon item ~ ~1 ~ {Tags:["popo"],Item:{id:"minecraft:lingering_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§2Wicked Witch's Potion\"}"},CustomPotionColor:2327824,custom_potion_effects:[{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200}],Enchantments:[{}]}},PickupDelay:5}


execute as @a[tag=wicked,scores={C=1,P=2,magie=20..}] at @s run summon item ~ ~1 ~ {Tags:["popo"],Item:{id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§2Wicked Witch's Potion\"}"},CustomPotionColor:2327824,custom_potion_effects:[{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200},{id:0,amplifier:0,duration:200}],Enchantments:[{}]}},PickupDelay:5}


execute as @a[scores={C=1,magie=..9},tag=wicked] run tellraw @s {"text":"You don't select enough magic to cast the spell !","color":"dark_green"}
execute as @a[scores={C=1,magie=..9},tag=wicked] run return 0

execute as @a[tag=wicked,scores={C=1,magie=20..}] at @s run function wicked:potion_book/data


data modify storage wicked.potion PotionId set value ["minecraft:","minecraft:","minecraft:","minecraft:","minecraft:","minecraft:","minecraft:","minecraft:"]


scoreboard players set @s D1 0
scoreboard players set @s D2 0
scoreboard players set @s D3 0
scoreboard players set @s D4 0
scoreboard players set @s D5 0
scoreboard players set @s D6 0
scoreboard players set @s D7 0
scoreboard players set @s D8 0

scoreboard players set @s A1 0
scoreboard players set @s A2 0
scoreboard players set @s A3 0
scoreboard players set @s A4 0
scoreboard players set @s A5 0
scoreboard players set @s A6 0
scoreboard players set @s A7 0
scoreboard players set @s A8 0


scoreboard players set @s L 0
scoreboard players set @s P 0
scoreboard players set @s R 0



clear @s written_book{book_potion:1b}


execute as @s run function wicked:potion_book/book1

particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.5 1 0.5 10 100
particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.5 1 0.5 10 100

scoreboard players remove @s magie 20
execute if score @a[limit=1,tag=wicked,scores={magie=20..}] C matches 1..1 run execute as @a[tag=wicked,scores={C=1}] run scoreboard players set @s C 0
