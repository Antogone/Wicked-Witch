##
 # test_storage.mcfunction
 # 
 #function wicked:enchanting_book/storage with storage wicked.ench Temp
 # Created by Antogone.
##
$data modify storage wicked.ench Temp.part set value {id:"$(id)",lvl:$(lvl)s}
execute store result storage wicked.ench Temp.index int 1 run scoreboard players get @p[tag=wicked] ench_trigger
function wicked:enchanting_book/storage_ancien with storage wicked.ench Temp


