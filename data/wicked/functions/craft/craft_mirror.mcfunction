##
 # craft.mcfunction
 # 
 #
 # Created by Antogone.
##
playsound minecraft:entity.witch.ambient master @a
recipe take @s wicked:mirror
advancement revoke @s only wicked:magic_mirror_radv

give @p carrot_on_a_stick{CustomModelData:10140005,HideFlags:3,mirror_1:1b,display:{Name:"{\"text\":\"§2Magic Mirror : Entry\"}"},Enchantments:[{}]}
clear @s knowledge_book

