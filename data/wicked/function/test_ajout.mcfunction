##
 # test_ajout.mcfunction
 # 
 #
 # Created by Antogone.
##
#'{"extra":[{"color":"#51b330","text":"Ajout Spell","bold":true},{"text":"nn"},{"color":"#7ad950","text":"▇▇▇▇▇▇▇▇▇▇▇▇"},{"text":"nn"},{"color":"#51b330","text":"This spell will give you your book of potion !nn"},{"color":"#51b330","clickEvent":{"action":"run_command","value":"/say test "},"hoverEvent":{"action":"show_text","contents":{"text":"Magic Requiered : 10 for each potion"}},"text":"✴ Cast the Spell ✴","bold":true},{"text":"nn"},{"color":"#7ad950","text":"▇▇▇▇▇▇▇▇▇▇▇"},{"text":"nn "}],"text":""}'


summon armor_stand ~ ~ ~ {Tags:['Test_aj']}
item replace entity @e[tag=Test_aj] weapon.mainhand from entity @s weapon.mainhand

data modify entity @e[tag=Test_aj,limit=1] HandItems[0].tag.pages insert -1 value '{"extra":[{"color":"#51b330","text":"Ajout Spell","bold":true},{"text":"\\n \\n"},{"color":"#7ad950","text":"▇▇▇▇▇▇▇▇▇▇▇▇"},{"text":"\\n \\n"},{"color":"#51b330","text":"This spell will give you your book of potion ! \\n \\n"},{"color":"#51b330","clickEvent":{"action":"run_command","value":"/say test "},"hoverEvent":{"action":"show_text","contents":{"text":"Magic Requiered : 10 for each potion"}},"text":"✴ Cast the Spell ✴","bold":true},{"text":"\\n \\n "},{"color":"#7ad950","text":"▇▇▇▇▇▇▇▇▇▇▇"}],"text":""}'

item replace entity @s weapon.mainhand from entity @e[tag=Test_aj,limit=1] weapon.mainhand

kill @e[tag=Test_aj]