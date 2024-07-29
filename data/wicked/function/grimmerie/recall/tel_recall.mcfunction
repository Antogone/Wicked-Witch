##
 # tel_recall.mcfunction
 # 
 #
 # Created by Antogone.
##
execute as @a[scores={magie=..14},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}
execute if entity @s[scores={magie=..14}] run return 0


scoreboard players remove @s magie 15
scoreboard players set @s spell 0
function wicked:grimmerie/recall/teleport with storage wicked.recall recall
