##
 # storage_ancien.mcfunction
 #  function wicked:enchanting_book/storage_ancien with storage wicked.ench Temp
 #
 # Created by Antogone.
##

# $execute if score @p[tag=wicked] ench_trigger matches 0.. run data modify storage wicked.ench EnchEnd.ancien set value {$(part),"$(id)": $(lvl)}
data modify storage wicked.ench EnchEnd.ancien merge from storage wicked.ench Temp.part


trigger ench_trigger
scoreboard players enable @p[tag=wicked] ench_trigger
