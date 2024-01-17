##
 # storage_ancien.mcfunction
 #  function wicked:potion_book/storage_ancien with storage wicked.potion Temp
 #
 # Created by Antogone.
##

$data modify storage wicked.potion PotionEnd.ancien insert $(index) from storage wicked.potion Temp.part

trigger potion_trigger
scoreboard players enable @p[tag=wicked] potion_trigger
