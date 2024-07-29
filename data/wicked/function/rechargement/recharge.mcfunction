##
 # recharge.mcfunction
 # 
 #
 # Created by Antogone.
##
execute as @s if score @s magie < #limit magie run scoreboard players add @s itm 1
execute as @s if score @s magie = #limit magie run scoreboard players set @s itm 0

execute as @s if score @s[scores={select=0}] itm matches 1..1 if score @s magie < #limit magie run scoreboard players add @s magie 1 
execute as @s if score @s[scores={select=0}] itm matches 1.. run scoreboard players set @s itm 0


execute as @s if score @s[scores={select=1}] itm matches 2..2 if score @s magie < #limit magie run scoreboard players add @s magie 1 
execute as @s if score @s[scores={select=1}] itm matches 2.. run scoreboard players set @s itm 0

execute as @s if score @s[scores={select=1}] itm matches 2..2 run scoreboard players set @s itm 0