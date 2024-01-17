##
 # creation.mcfunction
 # 
 #
 # Created by Antogone.
##
execute as @a[scores={magie=..9},tag=wicked] run tellraw @s {"text":"You don't select enough magic to cast the spell !","color":"dark_green"}
execute as @a[scores={magie=..9},tag=wicked] run return 0


$data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.Enchantments set value $(ancien)

particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.5 1 0.5 10 100
particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.5 1 0.5 10 100

function wicked:enchanting_book/undo
scoreboard players remove @p[tag=wicked] magie 10