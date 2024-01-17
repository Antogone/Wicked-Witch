##
 # storage_ancien.mcfunction
 #  function wicked:enchanting_book/storage_ancien with storage wicked.ench Temp
 #
 # Created by Antogone.
##

$data modify storage wicked.ench EnchEnd.ancien insert $(index) from storage wicked.ench Temp.part

trigger ench_trigger
scoreboard players enable @p[tag=wicked] ench_trigger
