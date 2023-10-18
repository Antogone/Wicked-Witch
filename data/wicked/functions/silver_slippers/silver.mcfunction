
##########################
# IDENTIFICATION
#########################
scoreboard players set @a[tag=wicked,limit=1,predicate=wicked:select_silver] equip 1

scoreboard players set @a[tag=wicked,limit=1,predicate=!wicked:select_silver] equip 0


##########################
# Affichage
#########################
#{"text":"[Wicked]","color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 3"}}
execute as @a[tag=house,tag=!ast_p,tag=!ghost,scores={equip=1,s=20..,bro=1},predicate=!wicked:select_broom] run tellraw @s ["",{"text":"Dimension : "},{"text":"[The End]","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 2"}},{"text":" "},{"text":"[Overworld]","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 0"}},{"text":" "},{"text":"[The Nether]","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 1"}},{"text":" "},{"text":"[House]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 4"}},{"text":" "}]

execute as @a[tag=no_house,tag=!ast_p,tag=!ghost,scores={equip=1,s=20..,bro=1},predicate=!wicked:select_broom] run tellraw @s ["",{"text":"Dimension : "},{"text":"[The End]","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 2"}},{"text":" "},{"text":"[Overworld]","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 0"}},{"text":" "},{"text":"[The Nether]","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 1"}},{"text":" "}]


scoreboard players set @a[scores={s=20..}] s 0




###### TELEPORTATION OVERWORLD
execute at @a[tag=!ast_p,tag=!ghost,scores={equip=1,choose=0}] run function wicked:silver_slippers/eart

###### TELEPORTATION NETHER
execute at @a[tag=!ast_p,tag=!ghost,scores={equip=1,choose=1}] run function wicked:silver_slippers/net

#########TELEPORTATION END 
execute at @a[tag=!ast_p,tag=!ghost,scores={equip=1,choose=2}] run function wicked:silver_slippers/end

# #########TELEPORTATION WICKED
# execute at @e[scores={equip=1,choose=3}] run function wick

#########TELEPORTATION MAISON
execute at @a[tag=!ast_p,tag=!ghost,scores={equip=1,choose=4}] run function wicked:set_house/house


scoreboard players set @a[scores={equip=0,choose=0..4}] choose -1

########## HOUSE SET
execute as @e[tag=set_house,limit=1,type=slime] run function wicked:set_house/set_house


