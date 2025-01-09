#potion.mcfunction

execute as @a[tag=wicked,predicate=wicked:is_sneaking,predicate=wicked:select_book_potion,scores={P=0}] at @s run data merge entity @e[type=item,limit=1,sort=nearest,distance=..5] {Item:{id:"minecraft:potion",components:{"minecraft:unbreakable":{},"enchantment_glint_override":true}}}

execute as @a[tag=wicked,predicate=wicked:is_sneaking,predicate=wicked:select_book_potion,scores={P=1}] at @s run data merge entity @e[type=item,limit=1,sort=nearest,distance=..5] {Item:{id:"minecraft:lingering_potion",components:{"minecraft:unbreakable":{},"enchantment_glint_override":true}}}

execute as @a[tag=wicked,predicate=wicked:is_sneaking,predicate=wicked:select_book_potion,scores={P=2}] at @s run data merge entity @e[type=item,limit=1,sort=nearest,distance=..5] {Item:{id:"minecraft:splash_potion",components:{"minecraft:unbreakable":{},"enchantment_glint_override":true}}}



 #### Book 
execute as @a[scores={spell=10,magie=10..}] run function wicked:potion_book/book
scoreboard players set @a[scores={spell=10},tag=wicked] spell 0