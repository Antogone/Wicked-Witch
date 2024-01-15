playsound minecraft:block.beacon.deactivate master @a

clear @s carrot_on_a_stick{poofing:1b}
clear @s carrot_on_a_stick{scepter:1b}
clear @s carrot_on_a_stick{immo:1b}
clear @s snowball{fireball:1b}
clear @s feather{broom:1b}
clear @s command_block{CustomModelData:14120001}
clear @s red_dye{reloading:1b}
clear @s totem_of_undying{pendant:1b}


item replace entity @s hotbar.0 from entity @e[tag=hold,limit=1] armor.head
item replace entity @s hotbar.1 from entity @e[tag=hold,limit=1] weapon.mainhand
item replace entity @s hotbar.2 from entity @e[tag=hold,limit=1] weapon.offhand

item replace entity @s hotbar.3 from entity @e[tag=hold2,limit=1] armor.head
item replace entity @s hotbar.4 from entity @e[tag=hold2,limit=1] weapon.mainhand
item replace entity @s armor.head from entity @e[tag=hold2,limit=1] weapon.offhand


give @s totem_of_undying{HideFlags:3,CustomModelData:141200,AttributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:10,Operation:1,UUIDLeast:346877,UUIDMost:439264},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:12,Operation:1,UUIDLeast:595497,UUIDMost:893170}],display:{Name:"{\"text\":\"§2Wicked Witch's Pendant\"}"},pendant:1b,Enchantments:[{}]}

kill @e[tag=hold]
kill @e[tag=hold2]

tag @s remove actif
clear @s red_dye{reloading:1b}
