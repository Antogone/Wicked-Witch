#potion.mcfunction

execute as @a[tag=wicked,predicate=wicked:is_sneaking,scores={P=0},nbt={SelectedItem:{id:"minecraft:written_book",tag:{title:"§2Book of Potions"}}}] at @s run data merge entity @e[type=item,limit=1,sort=nearest,distance=..5] {Item:{id:"minecraft:potion",tag:{Enchantments:[{}]}}}

execute as @a[tag=wicked,predicate=wicked:is_sneaking,scores={P=1},nbt={SelectedItem:{id:"minecraft:written_book",tag:{title:"§2Book of Potions"}}}] at @s run data merge entity @e[type=item,limit=1,sort=nearest,distance=..5] {Item:{id:"minecraft:lingering_potion",tag:{Enchantments:[{}]}}}

execute as @a[tag=wicked,predicate=wicked:is_sneaking,scores={P=2},nbt={SelectedItem:{id:"minecraft:written_book",tag:{title:"§2Book of Potions"}}}] at @s run data merge entity @e[type=item,limit=1,sort=nearest,distance=..5] {Item:{id:"minecraft:splash_potion",tag:{Enchantments:[{}]}}}



 #### Book 
execute as @a[scores={spell=10,magie=10..}] run function wicked:potion_book/book
scoreboard players set @a[scores={spell=10},tag=wicked] spell 0