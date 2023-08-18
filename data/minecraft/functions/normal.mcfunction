
clear @a[tag=wicked,limit=1] carrot_on_a_stick{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§2Poofing\"}"},Enchantments:[{}]}
clear @a[tag=wicked,limit=1] carrot_on_a_stick{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§2Immobilization\"}"},Enchantments:[{}]}
clear @a[tag=wicked,limit=1] snowball{HideFlags:3,CustomModelData:10140002,Unbreakable:1,display:{Name:"{\"text\":\"§2Fireball\"}"},Enchantments:[{}]}
clear @a[tag=wicked,limit=1] feather{HideFlags:3,CustomModelData:10140015,Unbreakable:1,display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}
clear @a[tag=wicked,limit=1] carrot_on_a_stick{HideFlags:3,CustomModelData:10140003,Unbreakable:1b,display:{Name:"{\"text\":\"§2Scepter\"}"},Enchantments:[{id:"minecraft:sharpness",lvl:8s},{id:"minecraft:smite",lvl:8s},{id:"minecraft:bane_of_arthropods",lvl:8s}],AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:2,UUIDLeast:80949,UUIDMost:496823},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:12,Operation:1,UUIDLeast:690100,UUIDMost:811832}]}
clear @a[tag=wicked,limit=1] totem_of_undying{HideFlags:3,AttributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:10,Operation:1,UUIDLeast:346877,UUIDMost:439264},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:12,Operation:1,UUIDLeast:595497,UUIDMost:893170}],display:{Name:"{\"text\":\"§2Wicked Witch's Pendant\"}"},ench:[{id:34,lvl:211}],Enchantments:[{}]}


clear @a[tag=wicked,limit=1] barrier{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§2ReLoading\"}"},Enchantments:[{}]}


item replace entity @a[tag=wicked,limit=1] hotbar.0 from entity @e[tag=hold,limit=1] armor.head
item replace entity @a[tag=wicked,limit=1] hotbar.1 from entity @e[tag=hold,limit=1] weapon.mainhand
item replace entity @a[tag=wicked,limit=1] hotbar.2 from entity @e[tag=hold,limit=1] weapon.offhand

item replace entity @a[tag=wicked,limit=1] hotbar.3 from entity @e[tag=hold2,limit=1] armor.head
item replace entity @a[tag=wicked,limit=1] hotbar.4 from entity @e[tag=hold2,limit=1] weapon.mainhand
item replace entity @a[tag=wicked,limit=1] armor.head from entity @e[tag=hold2,limit=1] weapon.offhand


give @a[tag=wicked,limit=1] totem_of_undying{HideFlags:3,CustomModelData:141200,AttributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:10,Operation:1,UUIDLeast:346877,UUIDMost:439264},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:12,Operation:1,UUIDLeast:595497,UUIDMost:893170}],display:{Name:"{\"text\":\"§2Wicked Witch's Pendant\"}"},ench:[{id:34,lvl:211}],Enchantments:[{}]}

kill @e[tag=hold]
kill @e[tag=hold2]

tag @a[tag=wicked,limit=1] remove actif
