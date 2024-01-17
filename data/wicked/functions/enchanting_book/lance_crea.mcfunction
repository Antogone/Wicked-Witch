##
 # test_crea.mcfunction
 # 
 # function wicked:enchanting_book/lance_crea with storage wicked.ench EnchEnd
 # Created by Antogone.
##
execute as @p[tag=wicked,scores={ench_trigger=0}] run function wicked:enchanting_book/storage with storage wicked.ench Temp
function wicked:enchanting_book/creation with storage wicked.ench EnchEnd


