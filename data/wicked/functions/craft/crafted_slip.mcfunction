##
 # crafted_slip.mcfunction
 # 
 #
 # Created by .
##
playsound minecraft:entity.witch.ambient master @a
recipe take @s wicked:slip
advancement revoke @s only wicked:slip_radv

playsound minecraft:entity.witch.ambient master @a
particle happy_villager ~ ~0.15 ~ 0 0 0 0.1 8
clear @s knowledge_book

loot give @s loot wicked:item/silver_slippers