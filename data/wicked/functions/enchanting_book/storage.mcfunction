##
 # test_storage.mcfunction
 # 
 #function wicked:enchanting_book/storage with storage wicked.ench Temp
 # Created by Antogone.
##
# $data modify storage wicked.ench Temp.part set value {id:"$(id)",lvl:$(lvl)s}
$data modify storage wicked.ench Temp.part set value {"$(id)": $(lvl)}



execute store result storage wicked.ench Temp.index int 1 run scoreboard players get @p[tag=wicked] ench_trigger
function wicked:enchanting_book/storage_ancien


