##
 # test_ajout.mcfunction
 # 
 #
 # Created by Antogone.
##
#'{"extra":[{"color":"#51b330","text":"Ajout Spell","bold":true},{"text":"nn"},{"color":"#7ad950","text":"▇▇▇▇▇▇▇▇▇▇▇▇"},{"text":"nn"},{"color":"#51b330","text":"This spell will give you your book of potion !nn"},{"color":"#51b330","clickEvent":{"action":"run_command","value":"/say test "},"hoverEvent":{"action":"show_text","contents":{"text":"Magic Requiered : 10 for each potion"}},"text":"✴ Cast the Spell ✴","bold":true},{"text":"nn"},{"color":"#7ad950","text":"▇▇▇▇▇▇▇▇▇▇▇"},{"text":"nn "}],"text":""}'

data modify storage wicked.pages info.content append from storage minecraft:wicked.pages temp.temp[0]


summon armor_stand ~ ~ ~ {Tags:['Test_aj']}
item replace entity @e[tag=Test_aj] weapon.mainhand from entity @s weapon.offhand

# # data modify entity @e[tag=Test_aj,limit=1] HandItems[0].components.minecraft:written_book_content.pages insert -1 value '{"extra":[{"color":"#51b330","text":"Ajout Spell","bold":true},{"text":"\\n \\n"},{"color":"#7ad950","text":"▇▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n \\n"},{"color":"#51b330","text":"This spell will give you your book of potion ! \\n \\n"},{"color":"#51b330","clickEvent":{"action":"run_command","value":"/say test "},"hoverEvent":{"action":"show_text","contents":{"text":"Magic Requiered : 10 for each potion"}},"text":"✴ Cast the Spell ✴","bold":true},{"text":"\\n \\n "},{"color":"#7ad950","text":"▇▇▇▇▇▇▇▇▇▇▇"}],"text":""}'


data modify entity @e[tag=Test_aj,limit=1] HandItems[0].components.minecraft:written_book_content.pages set from storage wicked.pages info.content
data modify entity @e[tag=Test_aj,limit=1] HandItems[0].components.minecraft:custom_data.pages set from storage wicked.pages info.content

item replace entity @s weapon.offhand from entity @e[tag=Test_aj,limit=1] weapon.mainhand

kill @e[tag=Test_aj]



