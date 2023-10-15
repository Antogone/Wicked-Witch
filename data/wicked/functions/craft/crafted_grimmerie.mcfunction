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

# /give @p written_book{pages:['["",{"text":"\\u204e The Grimmerie \\u204e","color":"dark_green"},{"text":"\\n\\n ","color":"reset"}]','{"text":"\\u204e Spell 1 \\u204e","color":"dark_green"}'],title:"The Grimmerie",author:"http://minecraft.tools/"}


# /give @p written_book{pages:['{"text":"\\u204e The Grimmerie \\u204e","color":"dark_green"},{"text":"\\n\\n ","color":"reset"}','{"text":"\\u204e Spell 1 \\u204e","color":"dark_green"}'],title:"The Grimmerie",author:"http://minecraft.tools/"}



give @s written_book{pages: ['{"extra":[{"color":"dark_green","text":"Locator Spell"},{"text":"\\n\\n"},{"color":"green","text":"▇▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n\\n"},{"color":"dark_green","text":"This spell will reveal the position of all the nearby entity !\\n\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s spell 2"},"hoverEvent":{"action":"show_text","contents":{"text":"Magic Requiered : 10"}},"text":"✴ Cast the Spell ✴"},{"text":"\\n\\n"},{"color":"green","text":"▇▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n "}],"text":""}', '{"extra":[{"color":"dark_green","text":"Aura-Explosion Spell"},{"text":"\\n\\n"},{"color":"green","text":"▇▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n\\n"},{"color":"dark_green","text":"This spell will unleash your magic aura !\\n\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s spell 20"},"hoverEvent":{"action":"show_text","contents":{"text":"Magic Requiered : 15"}},"text":"✴ Cast the Spell ✴"},{"text":"\\n\\n"},{"color":"green","text":"▇▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n "}],"text":""}', '{"extra":[{"color":"dark_green","text":"Dispel"},{"text":"\\n\\n"},{"color":"green","text":"▇▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n\\n"},{"color":"dark_green","text":"This spell will dispel any effect on any entity around\\n\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s spell 68"},"hoverEvent":{"action":"show_text","contents":{"text":"Magic Requiered : 5"}},"text":"✴ Cast the Spell ✴"},{"text":"\\n\\n"},{"color":"green","text":"▇▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n "}],"text":""}', '{"extra":[{"color":"dark_green","text":"Ghost Walk"},{"text":"\\n\\n"},{"color":"green","text":"▇▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n\\n"},{"color":"dark_green","text":"This spell will allow you to phase throught the univers for 5seconds !\\n\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s spell 600"},"hoverEvent":{"action":"show_text","contents":{"text":"Magic Requiered :30"}},"text":"✴ Cast the Spell ✴"},{"text":"\\n\\n"},{"color":"green","text":"▇▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n "}],"text":""}', '{"extra":[{"color":"dark_green","text":"Protection Spell"},{"text":"\\n\\n"},{"color":"green","text":"▇▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n\\n"},{"color":"dark_green","text":"This spell will protect you from any damage !\\n\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s spell 1"},"hoverEvent":{"action":"show_text","contents":{"text":"Magic Requiered : 40"}},"text":"✴ Cast the Spell ✴"},{"text":"\\n\\n"},{"color":"green","text":"▇▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n "}],"text":""}', '{"extra":[{"color":"dark_green","text":"Healing Spell"},{"text":"\\n\\n"},{"color":"green","text":"▇▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n\\n"},{"color":"dark_green","text":"This spell will heal all the people in a radius of 10 blocks !\\n\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s spell 3"},"hoverEvent":{"action":"show_text","contents":{"text":"Magic Requiered : 30"}},"text":"✴ Cast the Spell ✴"},{"text":"\\n\\n"},{"color":"green","text":"▇▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n\\n\\n "}],"text":""}', '{"extra":[{"color":"dark_green","text":"Astral Projection Spell"},{"text":"\\n\\n"},{"color":"green","text":"▇▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n\\n"},{"color":"dark_green","text":"This spell will use the astral projection in you !\\n\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s spell 38"},"hoverEvent":{"action":"show_text","contents":{"text":"Magic Requiered : 30"}},"text":"✴ Cast the Spell ✴"},{"text":"\\n\\n"},{"color":"green","text":"▇▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n\\n\\n "}],"text":""}', '{"extra":[{"color":"dark_green","text":"Barrier Spell"},{"text":"\\n\\n"},{"color":"green","text":"▇▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n\\n"},{"color":"dark_green","text":"This spell will give you an item capable of creating an magic block !\\n\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s spell 4"},"hoverEvent":{"action":"show_text","contents":{"text":"Magic Requiered : 15"}},"text":"✴ Cast the Spell ✴"},{"text":"\\n"},{"color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s spell 5"},"hoverEvent":{"action":"show_text","contents":{"text":"Magic Requiered : 5"}},"text":"✴ Undo the Spell✴"},{"text":"\\n\\n"},{"color":"green","text":"▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n "}],"text":""}', '{"extra":[{"color":"dark_green","text":"Potion Spell"},{"text":"\\n\\n"},{"color":"green","text":"▇▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n\\n"},{"color":"dark_green","text":"This spell will give you your book of potion !\\n\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s spell 10"},"hoverEvent":{"action":"show_text","contents":{"text":"Magic Requiered : 10 for each potion"}},"text":"✴ Cast the Spell ✴"},{"text":"\\n\\n"},{"color":"green","text":"▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n\\n "}],"text":""}', '{"extra":[{"color":"dark_green","text":"Enchantment Spell"},{"text":"\\n\\n"},{"color":"green","text":"▇▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n\\n"},{"color":"dark_green","text":"This spell will give you your book of enchantment !\\n\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s spell 16"},"hoverEvent":{"action":"show_text","contents":{"text":"Magic Requiered : 20 for each enchantment"}},"text":"✴ Cast the Spell ✴"},{"text":"\\n\\n"},{"color":"green","text":"▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n\\n "}],"text":""}'], CustomModelData: 10140005, title: "§2The Grimmerie", author: "Bomerie", resolved: 1b}