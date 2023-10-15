execute as @a[scores={spell=16,magie=20..},tag=wicked] run function wicked:enchanting_book/book1
execute as @a[scores={spell=16},tag=wicked] run scoreboard players set @s spell 0



execute as @a[scores={CRAFT=1,magie=20..}] at @s run function wicked:enchanting_book/data2
execute as @a[scores={CRAFT=1,magie=..19}] at @s run tellraw @s {"text":"You don't select enough magic to cast the spell !","color":"dark_green"}

execute as @a[scores={CRAFT=1,magie=..19}] run scoreboard players set @s ENCH1 0
execute as @a[scores={CRAFT=1,magie=..19}] run scoreboard players set @s ENCH2 0
execute as @a[scores={CRAFT=1,magie=..19}] run scoreboard players set @s ENCH3 0
execute as @a[scores={CRAFT=1,magie=..19}] run scoreboard players set @s ENCH4 0
execute as @a[scores={CRAFT=1,magie=..19}] run scoreboard players set @s ENCH5 0

execute as @a[scores={CRAFT=1,magie=..19}] run scoreboard players set @s LVL1 0
execute as @a[scores={CRAFT=1,magie=..19}] run scoreboard players set @s LVL2 0
execute as @a[scores={CRAFT=1,magie=..19}] run scoreboard players set @s LVL3 0
execute as @a[scores={CRAFT=1,magie=..19}] run scoreboard players set @s LVL4 0
execute as @a[scores={CRAFT=1,magie=..19}] run scoreboard players set @s LVL5 0

execute as @a[scores={CRAFT=1,magie=..19}] run scoreboard players set @s NUMBER 0
execute as @a[scores={CRAFT=1,magie=..19}] run scoreboard players set @s UNDO 0
execute as @a[scores={CRAFT=1,magie=..19}] run scoreboard players set @s CRAFT 0

execute as @a[scores={CRAFT=1}] run scoreboard players set @s CRAFT 0


execute as @a[tag=wicked,scores={NUMBER=1}] run function wicked:enchanting_book/book2
execute as @a[tag=wicked,scores={NUMBER=2}] run function wicked:enchanting_book/book2
execute as @a[tag=wicked,scores={NUMBER=3}] run function wicked:enchanting_book/book3
execute as @a[tag=wicked,scores={NUMBER=4}] run function wicked:enchanting_book/book4
execute as @a[tag=wicked,scores={NUMBER=5}] run function wicked:enchanting_book/book5


execute as @a[tag=wicked,scores={UNDO=1}] run function wicked:enchanting_book/undo


execute as @a[scores={UNDO=1}] run scoreboard players set @s ENCH1 0
execute as @a[scores={UNDO=1}] run scoreboard players set @s ENCH2 0
execute as @a[scores={UNDO=1}] run scoreboard players set @s ENCH3 0
execute as @a[scores={UNDO=1}] run scoreboard players set @s ENCH4 0
execute as @a[scores={UNDO=1}] run scoreboard players set @s ENCH5 0


execute as @a[scores={UNDO=1}] run scoreboard players set @s LVL1 0
execute as @a[scores={UNDO=1}] run scoreboard players set @s LVL2 0
execute as @a[scores={UNDO=1}] run scoreboard players set @s LVL3 0
execute as @a[scores={UNDO=1}] run scoreboard players set @s LVL4 0
execute as @a[scores={UNDO=1}] run scoreboard players set @s LVL5 0

execute as @e[scores={UNDO=1}] run scoreboard players set @s NUMBER 1
execute as @e[scores={UNDO=1}] run scoreboard players set @s CRAFT 0

execute as @e[scores={UNDO=1}] run scoreboard players set @s UNDO 0



