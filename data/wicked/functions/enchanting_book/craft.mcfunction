##
 # craft.mcfunction
 # 
 #
 # Created by Antogone.
##

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