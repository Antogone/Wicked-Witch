##
 # test_crea.mcfunction
 # 
 # function wicked:enchanting_book/lance_crea with storage wicked.ench EnchEnd
 # Created by Antogone.
##

execute store result score $ench_none ench_none run data get storage wicked.ench Temp.id

execute if score $ench_none ench_none matches -14 run return run tellraw @s {"text":"Enchantments is missing !","color":"dark_green"}

execute as @p[tag=wicked,scores={ench_trigger=0}] run function wicked:enchanting_book/storage with storage wicked.ench Temp
function wicked:enchanting_book/creation with storage wicked.ench EnchEnd


