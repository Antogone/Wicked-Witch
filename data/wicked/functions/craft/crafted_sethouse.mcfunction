##
 # crafted_sethouse.mcfunction
 # 
 #
 # Created by .
##
playsound minecraft:entity.witch.ambient master @a
recipe take @s wicked:set_house
advancement revoke @s only wicked:set_house_radv

give @s carrot_on_a_stick{house:1b,display:{Name:"{\"text\":\"§2Set House\"}"},Enchantments:[{}],CustomModelData: 10140004}
clear @s knowledge_book