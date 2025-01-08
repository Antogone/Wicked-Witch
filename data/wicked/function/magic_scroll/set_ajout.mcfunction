##
 # set_kill.mcfunction
 # 
 #
 # Created by Antogone.
##
advancement revoke @s only wicked:ajout_scroll
execute if entity @s[predicate=!wicked:spellbook_offhand] run say spellbook has to be in the offhand
execute if entity @s[predicate=!wicked:spellbook_offhand] run return 0



data modify storage wicked.pages info.content set from entity @s Inventory[-1].components.minecraft:custom_data.pages
data modify storage wicked.pages temp.temp set from entity @s SelectedItem.components.minecraft:custom_data.pages


function wicked:magic_scroll/ajout
