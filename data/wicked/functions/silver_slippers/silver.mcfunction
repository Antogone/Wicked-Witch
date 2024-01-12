
##########################
# IDENTIFICATION
#########################
scoreboard players set @a[tag=wicked,limit=1,predicate=wicked:select_silver] equip 1

scoreboard players set @a[tag=wicked,limit=1,predicate=!wicked:select_silver] equip 0


##########################
# Affichage
#########################
#{"text":"[Wicked]","color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 3"}}

execute as @a[tag=!ast_p,tag=!ghost,scores={equip=1,bro=1},predicate=wicked:is_sneaking,predicate=!wicked:select_broom] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.2 0.3 0.2 0.1 5



execute as @a[tag=house,tag=!ast_p,tag=!ghost,scores={equip=1,s=40..,bro=1},predicate=!wicked:select_broom] run tellraw @s ["",{"text":"Dimension : "},{"text":"[The End]","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 2"}},{"text":" "},{"text":"[Overworld]","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 0"}},{"text":" "},{"text":"[The Nether]","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 1"}},{"text":" "},{"text":"[House]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 4"}},{"text":" "}]

execute as @a[tag=no_house,tag=!ast_p,tag=!ghost,scores={equip=1,s=40..,bro=1},predicate=!wicked:select_broom] run tellraw @s ["",{"text":"Dimension : "},{"text":"[The End]","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 2"}},{"text":" "},{"text":"[Overworld]","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 0"}},{"text":" "},{"text":"[The Nether]","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 1"}},{"text":" "}]


scoreboard players set @a[scores={s=40..}] s 0




###### TELEPORTATION OVERWORLD
execute at @a[tag=!ast_p,tag=!ghost,scores={equip=1,choose=0}] run function wicked:silver_slippers/eart

###### TELEPORTATION NETHER
execute at @a[tag=!ast_p,tag=!ghost,scores={equip=1,choose=1}] run function wicked:silver_slippers/net

#########TELEPORTATION END 
execute at @a[tag=!ast_p,tag=!ghost,scores={equip=1,choose=2}] run function wicked:silver_slippers/end


#########TELEPORTATION MAISON
execute as @a[tag=!ast_p,tag=!ghost,scores={equip=1,choose=4}] run function wicked:set_house/house
scoreboard players set @a[scores={equip=0,choose=0..4}] choose -1


########## HOUSE SET
execute as @a[tag=wicked,limit=1,scores={click=1..},predicate=wicked:select_sethouse] at @s run function wicked:set_house/set_house
