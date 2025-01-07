##
 # set_recall.mcfunction
 # 
 #
 # Created by Antogone.
##
execute as @a[scores={magie=..14},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}
execute if entity @s[scores={magie=..14}] run return 0

function wicked:grimmerie/recall/kill_old with storage wicked.recall recall

data modify storage wicked.recall recall.dim set from entity @s Dimension
data modify storage wicked.recall recall.x set from entity @s Pos[0]
data modify storage wicked.recall recall.y set from entity @s Pos[1]
data modify storage wicked.recall recall.z set from entity @s Pos[2]
summon item_display ~ ~ ~ {item_display:"fixed",Tags:["recall_itm"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":{floats:[10140007]},"minecraft:item_model":"rune"}}}


execute if entity @s[tag=wicked,tag=light_purple] at @s run function wicked:cauldron/particle/couleur/light_purple
execute if entity @s[tag=wicked,tag=light_purple] at @s run function wicked:cauldron/particle/couleur/light_purple
execute if entity @s[tag=wicked,tag=light_purple] at @s run function wicked:cauldron/particle/couleur/light_purple



execute if entity @s[tag=wicked,tag=dark_purple] at @s run function wicked:cauldron/particle/couleur/dark_purple
execute if entity @s[tag=wicked,tag=dark_purple] at @s run function wicked:cauldron/particle/couleur/dark_purple
execute if entity @s[tag=wicked,tag=dark_purple] at @s run function wicked:cauldron/particle/couleur/dark_purple



execute if entity @s[tag=wicked,tag=dark_gray] at @s run function wicked:cauldron/particle/couleur/dark_gray
execute if entity @s[tag=wicked,tag=dark_gray] at @s run function wicked:cauldron/particle/couleur/dark_gray
execute if entity @s[tag=wicked,tag=dark_gray] at @s run function wicked:cauldron/particle/couleur/dark_gray



execute if entity @s[tag=wicked,tag=black] at @s run function wicked:cauldron/particle/couleur/black
execute if entity @s[tag=wicked,tag=black] at @s run function wicked:cauldron/particle/couleur/black
execute if entity @s[tag=wicked,tag=black] at @s run function wicked:cauldron/particle/couleur/black


execute if entity @s[tag=wicked,tag=dark_green] at @s run function wicked:cauldron/particle/alchemymod_v_t
execute if entity @s[tag=wicked,tag=dark_green] at @s run function wicked:cauldron/particle/alchemymod_v_t
execute if entity @s[tag=wicked,tag=dark_green] at @s run function wicked:cauldron/particle/alchemymod_v_t

scoreboard players remove @s magie 15
scoreboard players set @s spell 0