#potion.mcfunction
# C =1  Craft
# L = next book (1-8)
# R = 1 Finish 

execute as @a[tag=wicked,predicate=wicked:is_sneaking,scores={P=0},nbt={SelectedItem:{id:"minecraft:written_book",tag:{title:"§2Book of Potions"}}}] at @s run data merge entity @e[type=item,limit=1,sort=nearest,distance=..5] {Item:{id:"minecraft:potion",tag:{ench:[{id:34,lvl:211}],Enchantments:[{}]}}}

execute as @a[tag=wicked,predicate=wicked:is_sneaking,scores={P=1},nbt={SelectedItem:{id:"minecraft:written_book",tag:{title:"§2Book of Potions"}}}] at @s run data merge entity @e[type=item,limit=1,sort=nearest,distance=..5] {Item:{id:"minecraft:lingering_potion",tag:{ench:[{id:34,lvl:211}],Enchantments:[{}]}}}

execute as @a[tag=wicked,predicate=wicked:is_sneaking,scores={P=2},nbt={SelectedItem:{id:"minecraft:written_book",tag:{title:"§2Book of Potions"}}}] at @s run data merge entity @e[type=item,limit=1,sort=nearest,distance=..5] {Item:{id:"minecraft:splash_potion",tag:{ench:[{id:34,lvl:211}],Enchantments:[{}]}}}



 #### Book 1
execute as @a[scores={spell=10,magie=10..}] run function wicked:potion_book/book1

### Book 2
execute as @a[limit=1,tag=wicked,scores={magie=20..,L=2}] run function wicked:potion_book/book2

### Book 3
execute as @a[limit=1,tag=wicked,scores={magie=20..,L=3}] run function wicked:potion_book/book3

### Book 4 
execute as @a[limit=1,tag=wicked,scores={magie=20..,L=4}] run function wicked:potion_book/book4

### Book 5 
execute as @a[limit=1,tag=wicked,scores={magie=20..,L=5}] run function wicked:potion_book/book5

### Book 6 
execute as @a[limit=1,tag=wicked,scores={magie=20..,L=6}] run function wicked:potion_book/book6

### Book 7 
execute as @a[limit=1,tag=wicked,scores={magie=20..,L=7}] run function wicked:potion_book/book7

### Book 8
execute as @a[limit=1,tag=wicked,scores={magie=20..,L=8}] run function wicked:potion_book/book8


execute as @a[tag=wicked,scores={R=1}] run function wicked:potion_book/r

execute as @a[tag=wicked,scores={C=1,magie=20..}] at @s run function wicked:potion_book/c


scoreboard players set @a[scores={spell=10},tag=wicked] spell 0