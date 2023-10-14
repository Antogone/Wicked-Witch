##
 # recharge.mcfunction
 # 
 #
 # Created by Antogone.
##
#RECHARGE
# NO MAGIC EXTENSION
scoreboard players add @a[tag=wicked,tag=!l50,tag=!l60,tag=!l70,tag=!l80,limit=1,scores={magie=..99}] itm 1
scoreboard players add @a[tag=wicked,tag=l50,tag=!l60,tag=!l70,tag=!l80,limit=1,scores={magie=..199}] itm 1
scoreboard players add @a[tag=wicked,tag=l60,tag=!l70,tag=!l80,limit=1,scores={magie=..299}] itm 1
scoreboard players add @a[tag=wicked,tag=l70,tag=!l80,limit=1,scores={magie=..399}] itm 1
scoreboard players add @a[tag=wicked,tag=l80,limit=1,scores={magie=..499}] itm 1



scoreboard players set @a[tag=wicked,tag=!l50,tag=!l60,tag=!l70,tag=!l80,limit=1,scores={magie=100}] itm 0
scoreboard players set @a[tag=wicked,tag=l50,tag=!l60,tag=!l70,tag=!l80,limit=1,scores={magie=200}] itm 0
scoreboard players set @a[tag=wicked,tag=l60,tag=!l70,tag=!l80,limit=1,scores={magie=300}] itm 0
scoreboard players set @a[tag=wicked,tag=l70,tag=!l80,limit=1,scores={magie=400}] itm 0
scoreboard players set @a[tag=wicked,tag=l80,limit=1,scores={magie=500}] itm 0



execute if score @a[tag=wicked,limit=1,scores={select=0}] itm matches 20..20 run scoreboard players add @a[tag=wicked,limit=1,scores={magie=..499}] magie 1
execute if score @a[tag=wicked,limit=1,scores={select=0}] itm matches 20..100 run execute as @a[scores={select=0,itm=10..}] run scoreboard players set @s itm 0



execute if score @a[tag=wicked,tag=!l50,tag=!l60,tag=!l70,tag=!l80,limit=1,scores={select=1}] itm matches 30..30 run execute as @a[scores={select=1,itm=30}] run scoreboard players add @a[tag=wicked,limit=1,scores={magie=..99}] magie 1
execute if score @a[tag=wicked,tag=l50,tag=!l60,tag=!l70,tag=!l80,limit=1,scores={select=1}] itm matches 30..30 run execute as @a[scores={select=1,itm=30}] run scoreboard players add @a[tag=wicked,limit=1,scores={magie=..199}] magie 1
execute if score @a[tag=wicked,tag=l60,tag=!l70,tag=!l80,limit=1,scores={select=1}] itm matches 30..30 run execute as @a[scores={select=1,itm=30}] run scoreboard players add @a[tag=wicked,limit=1,scores={magie=..299}] magie 1
execute if score @a[tag=wicked,tag=l70,tag=!l80,limit=1,scores={select=1}] itm matches 30..30 run execute as @a[scores={select=1,itm=30}] run scoreboard players add @a[tag=wicked,limit=1,scores={magie=..399}] magie 1
execute if score @a[tag=wicked,tag=l80,limit=1,scores={select=1}] itm matches 30..30 run execute as @a[scores={select=1,itm=30}] run scoreboard players add @a[tag=wicked,limit=1,scores={magie=..499}] magie 1


execute if score @a[tag=wicked,limit=1,scores={select=1}] itm matches 30..100 run execute as @a[scores={select=1,itm=20..}] run scoreboard players set @s itm 0
