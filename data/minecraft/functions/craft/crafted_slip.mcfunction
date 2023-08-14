##
 # crafted_slip.mcfunction
 # 
 #
 # Created by .
##
playsound minecraft:entity.witch.ambient master @a
recipe take @s slip
advancement revoke @s only wicked/slip_radv

playsound minecraft:entity.witch.ambient master @a
particle happy_villager ~ ~0.15 ~ 0 0 0 0.1 8
clear @s knowledge_book

give @s chainmail_boots{Unbreakable:1,HideFlags:3,display:{Name:"{\"text\":\"§2Silver Slippers\"}"},Enchantments:[{id:"minecraft:unbreaking",lvl:211}]}