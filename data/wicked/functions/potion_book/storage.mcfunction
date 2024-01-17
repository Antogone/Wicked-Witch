##
 # test_storage.mcfunction
 # 
 #function wicked:potion_book/test_storage with storage wicked.potion Temp
 # Created by Antogone.
##
$data modify storage wicked.potion Temp.part set value {id:'$(id)',amplifier:$(amplifier),duration:$(duration)}
execute store result storage wicked.potion Temp.index int 1 run scoreboard players get @p[tag=wicked] potion_trigger
function wicked:potion_book/storage_ancien with storage wicked.potion Temp


