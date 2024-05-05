##
 # crafted_sethouse.mcfunction
 # 
 #
 # Created by .
##
playsound minecraft:entity.witch.ambient master @a
recipe take @s wicked:set_house
advancement revoke @s only wicked:set_house_radv

loot give @s loot wicked:item/house
clear @s knowledge_book