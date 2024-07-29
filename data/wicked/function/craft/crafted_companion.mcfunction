##
 # crafted_sethouse.mcfunction
 # 
 #
 # Created by .
##
playsound minecraft:entity.witch.ambient master @a
recipe take @s wicked:companion_amulet
advancement revoke @s only wicked:companion_amulet_radv

loot give @s loot wicked:item/companion
clear @s knowledge_book