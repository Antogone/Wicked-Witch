
##########################
# IDENTIFICATION
#########################
scoreboard players set @a[tag=wicked,limit=1,nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots",tag:{Unbreakable:1,HideFlags:3,display:{Name:"{\"text\":\"§2Silver Slippers\"}"},Enchantments:[{Id:"minecraft:unbreaking",lvl:211}]}}]}] equip 1

scoreboard players set @a[tag=wicked,limit=1,nbt=!{Inventory:[{Slot:100b,id:"minecraft:chainmail_boots",tag:{Unbreakable:1,HideFlags:3,display:{Name:"{\"text\":\"§2Silver Slippers\"}"},Enchantments:[{Id:"minecraft:unbreaking",lvl:211}]}}]}] equip 0


##########################
# Affichage
#########################
#{"text":"[Wicked]","color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 3"}}
execute as @a[scores={equip=1,s=20..,bro=1},nbt=!{playerGameType:3},tag=house] unless block ~ ~-1 ~ barrier run tellraw @a[scores={equip=1,s=20..},nbt=!{SelectedItem:{id:"minecraft:feather",tag:{display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}}}] ["",{"text":"Dimension : "},{"text":"[The End]","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 2"}},{"text":" "},{"text":"[Overworld]","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 0"}},{"text":" "},{"text":"[The Nether]","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 1"}},{"text":" "},{"text":"[House]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 4"}},{"text":" "}]

execute as @a[scores={equip=1,s=20..,bro=1},nbt=!{playerGameType:3},tag=no_house] unless block ~ ~-1 ~ barrier run tellraw @a[scores={equip=1,s=20..},nbt=!{SelectedItem:{id:"minecraft:feather",tag:{display:{Name:"{\"text\":\"§2Witch's Broom\"}"},Enchantments:[{}]}}}] ["",{"text":"Dimension : "},{"text":"[The End]","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 2"}},{"text":" "},{"text":"[Overworld]","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 0"}},{"text":" "},{"text":"[The Nether]","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 1"}},{"text":" "}]
scoreboard players set @a[scores={s=20..}] s 0




###### TELEPORTATION OVERWORLD
execute at @e[scores={equip=1,choose=0}] run function eart

###### TELEPORTATION NETHER
execute at @e[scores={equip=1,choose=1}] run function net

#########TELEPORTATION END 
execute at @e[scores={equip=1,choose=2}] run function end

#########TELEPORTATION WICKED
execute at @e[scores={equip=1,choose=3}] run function wick

#########TELEPORTATION MAISON
execute at @e[scores={equip=1,choose=4}] run function house


scoreboard players set @a[scores={equip=0,choose=0..4}] choose -1

########## HOUSE SET
execute as @e[tag=set_house,limit=1,type=slime] run function set_house


