##
 # test_crea.mcfunction
 # 
 # function wicked:potion_book/test_crea with storage wicked.potion PotionEnd
 # Created by Antogone.
##
execute as @p[tag=wicked,scores={potion_trigger=0}] run function wicked:potion_book/storage with storage wicked.potion Temp
function wicked:potion_book/creation with storage wicked.potion PotionEnd