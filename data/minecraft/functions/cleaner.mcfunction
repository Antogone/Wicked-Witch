
execute if score @a[tag=wicked,limit=1,scores={select=1}] magie matches 0..9 run execute as @a[tag=wicked,limit=1,scores={select=1,magie=..9}] run clear @s carrot_on_a_stick{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§2Poofing\"}"},Enchantments:[{}]}
execute if score @a[tag=wicked,limit=1,scores={select=1}] magie matches 0 run execute as @a[tag=wicked,limit=1,scores={select=1,magie=..1}] run clear @s carrot_on_a_stick{HideFlags:3,CustomModelData:10140003,Unbreakable:1,display:{Name:"{\"text\":\"§2Scepter\"}"}}
execute if score @a[tag=wicked,limit=1,scores={select=1}] magie matches 0..9 run execute as @a[tag=wicked,limit=1,scores={select=1,magie=..9}] run clear @s carrot_on_a_stick{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§2Immobilization\"}"},Enchantments:[{}]}
execute if score @a[tag=wicked,limit=1,scores={select=1}] magie matches 0..4 run execute as @a[tag=wicked,limit=1,scores={select=1,magie=..9}] run clear @s snowball{HideFlags:3,CustomModelData:10140002,Unbreakable:1,display:{Name:"{\"text\":\"§2Fireball\"}"},Enchantments:[{}]}
execute if score @a[tag=wicked,limit=1,scores={select=1}] magie matches 0 run execute as @a[tag=wicked,limit=1,scores={select=1,magie=..1}] run clear @s feather{HideFlags:3,CustomModelData:10140015,Unbreakable:1,display:{Name:"{\"text\":\"§2Magic Broom\"}"},Enchantments:[{}]}
execute if score @a[tag=wicked,limit=1,scores={select=1}] magie matches 0 run execute as @a[tag=wicked,limit=1,scores={select=1,magie=..1}] run clear @s command_block{HideFlags:3,CustomModelData:14120001,Unbreakable:1,display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}


execute if score @a[tag=wicked,limit=1] select matches 0..0 run execute as @a[tag=wicked,limit=1,scores={select=0}] run clear @s carrot_on_a_stick{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§2Poofing\"}"},Enchantments:[{}]}
execute if score @a[tag=wicked,limit=1] select matches 0..0 run execute as @a[tag=wicked,limit=1,scores={select=0}] run clear @s carrot_on_a_stick{HideFlags:3,CustomModelData:10140003,Unbreakable:1b,display:{Name:"{\"text\":\"§2Scepter\"}"},Enchantments:[{id:"minecraft:sharpness",lvl:8s},{id:"minecraft:smite",lvl:8s},{id:"minecraft:bane_of_arthropods",lvl:8s}],AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:2,UUIDLeast:80949,UUIDMost:496823},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:1,UUIDLeast:690100,UUIDMost:811832}]}
execute if score @a[tag=wicked,limit=1] select matches 0..0 run execute as @a[tag=wicked,limit=1,scores={select=0}] run clear @s carrot_on_a_stick{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§2Immobilization\"}"},Enchantments:[{}]}
execute if score @a[tag=wicked,limit=1] select matches 0..0 run execute as @a[tag=wicked,limit=1,scores={select=0}] run clear @s snowball{HideFlags:3,CustomModelData:10140002,Unbreakable:1,display:{Name:"{\"text\":\"§2Fireball\"}"},Enchantments:[{}]}
execute if score @a[tag=wicked,limit=1] select matches 0..0 run execute as @a[tag=wicked,limit=1,scores={select=0}] run clear @s feather{HideFlags:3,CustomModelData:10140015,Unbreakable:1,display:{Name:"{\"text\":\"§2Magic Broom\"}"},Enchantments:[{}]}
execute if score @a[tag=wicked,limit=1] select matches 0..0 run execute as @a[tag=wicked,limit=1,scores={select=0}] run clear @s command_block{HideFlags:3,CustomModelData:14120001,Unbreakable:1,display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}
execute if score @a[tag=wicked,limit=1] select matches 0..0 run execute as @a[tag=wicked,limit=1,scores={select=0}] run clear @s red_dye{HideFlags:3,CustomModelData:10140001,Unbreakable:1,display:{Name:"{\"text\":\"§cReloading\"}"},Enchantments:[{}]}