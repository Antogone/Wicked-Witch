playsound minecraft:block.beacon.deactivate master @a

clear @s carrot_on_a_stick{poofing:1b}
clear @s carrot_on_a_stick{scepter:1b}
clear @s carrot_on_a_stick{immo:1b}
clear @s snowball{fireball:1b}
clear @s feather{broom:1b}
clear @s feather{broom:2b}

clear @s command_block{CustomModelData:14120001}
clear @s red_dye{reloading:1b}
clear @s totem_of_undying{pendant:1b}


item replace entity @s hotbar.0 from entity @e[tag=hold,limit=1] armor.head
item replace entity @s hotbar.1 from entity @e[tag=hold,limit=1] weapon.mainhand
item replace entity @s hotbar.2 from entity @e[tag=hold,limit=1] weapon.offhand

item replace entity @s hotbar.3 from entity @e[tag=hold2,limit=1] armor.head
item replace entity @s armor.head from entity @e[tag=hold2,limit=1] weapon.offhand


loot give @s loot wicked:item/witch_pendant
kill @e[tag=hold]
kill @e[tag=hold2]

tag @s remove actif
clear @s red_dye{reloading:1b}
