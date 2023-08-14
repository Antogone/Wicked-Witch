##
 # crafted_witch_pendant.mcfunction
 # 
 #
 # Created by .
##
recipe take @s witch_pendant
advancement revoke @s only wicked/witch_pendant_radv

execute as @s unless entity @a[tag=wicked] run function start
playsound minecraft:entity.witch.ambient master @a
particle happy_villager ~ ~0.15 ~ 0 0 0 0.1 8
give @s totem_of_undying{HideFlags:3,CustomModelData:141200,AttributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:10,Operation:1,UUIDLeast:346877,UUIDMost:439264},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:1,UUIDLeast:595497,UUIDMost:893170}],display:{Name:"{\"text\":\"§2Wicked Witch's Pendant\"}"},ench:[{id:34,lvl:211}],Enchantments:[{}]}
clear @s knowledge_book
