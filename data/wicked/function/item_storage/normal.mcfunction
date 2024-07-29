playsound minecraft:block.beacon.deactivate master @a

clear @s carrot_on_a_stick[custom_data={poofing:1b}]
clear @s carrot_on_a_stick[custom_data={scepter:1b}]
clear @s carrot_on_a_stick[custom_data={immo:1b}]
clear @s snowball[custom_data={fireball:1b}]
clear @s feather[custom_data={broom:1b}]
clear @s feather[custom_data={broom:2b}]

clear @s command_block[custom_model_data=14120001]
clear @s red_dye[custom_data={reloading:1b}]
clear @s totem_of_undying[custom_data={pendant:1b}]


item replace entity @s hotbar.0 from entity @e[tag=hold,limit=1] armor.head
item replace entity @s hotbar.1 from entity @e[tag=hold,limit=1] weapon.mainhand
item replace entity @s hotbar.2 from entity @e[tag=hold,limit=1] weapon.offhand

item replace entity @s hotbar.3 from entity @e[tag=hold2,limit=1] armor.head
item replace entity @s armor.head from entity @e[tag=hold2,limit=1] weapon.offhand


loot give @s loot wicked:item/witch_pendant
kill @e[tag=hold]
kill @e[tag=hold2]

tag @s remove actif
clear @s red_dye[custom_data={reloading:1b}]
