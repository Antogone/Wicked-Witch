##
 # crafted_sethouse.mcfunction
 # 
 #
 # Created by .
##
playsound minecraft:entity.witch.ambient master @a
recipe take @s wicked:companion_amulet
advancement revoke @s only wicked:companion_amulet_radv

give @s amethyst_shard{telp:1b,display:{Name:"{\"text\":\"§2Companion Amulet\"}"},Enchantments:[{}]}
clear @s knowledge_book