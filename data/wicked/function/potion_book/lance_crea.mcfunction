##
 # test_crea.mcfunction
 # 
 # function wicked:potion_book/test_crea with storage wicked.potion PotionEnd
 # Created by Antogone.
##
execute store result score $effect_none effect_none run data get storage wicked.potion Temp.id

execute if score $effect_none effect_none matches -14 run return run tellraw @s {"text":"Effect is missing !","color":"dark_green"}

execute as @p[tag=wicked,scores={potion_trigger=0}] run function wicked:potion_book/storage with storage wicked.potion Temp
function wicked:potion_book/creation with storage wicked.potion PotionEnd