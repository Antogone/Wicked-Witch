##
 # crafted_sethouse.mcfunction
 # 
 #
 # Created by .
##
playsound minecraft:entity.witch.ambient master @a
recipe take @s wicked:set_house
advancement revoke @s only wicked:set_house_radv

give @s carrot_on_a_stick{CustomModelData: 10140004,house:1b,display:{Name:"{\"text\":\"§2House Spell\"}"},Enchantments:[{}]}
clear @s knowledge_book