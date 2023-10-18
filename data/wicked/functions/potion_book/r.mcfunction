##
 # r.mcfunction
 # 
 #
 # Created by Antogone.
##
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
scoreboard players set @s C 0


clear @s written_book{book_potion:1b}
execute as @s run function wicked:potion_book/book1

scoreboard players set @s R 0

