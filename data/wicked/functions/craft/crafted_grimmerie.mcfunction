##
 # craft_grimmerie.mcfunction
 # 
 #
 # Created by .
##
playsound minecraft:entity.witch.ambient master @a
recipe take @s wicked:the_grimmerie
advancement revoke @s only wicked:grimmerie_radv


playsound minecraft:entity.witch.ambient master @a
particle happy_villager ~ ~0.15 ~ 0 0 0 0.1 8
clear @s knowledge_book


loot give @s[tag=dark_green] loot wicked:item/the_grimmerie
loot give @s[tag=black] loot wicked:item/dark_spellbook
loot give @s[tag=dark_gray] loot wicked:item/occult_spellbook
loot give @s[tag=dark_purple] loot wicked:item/mystic_spellbook
loot give @s[tag=light_purple] loot wicked:item/witch_spellbook