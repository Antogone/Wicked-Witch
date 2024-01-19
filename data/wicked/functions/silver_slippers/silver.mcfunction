
##########################
# Affichage
#########################

execute as @a[tag=!ast_p,tag=!ghost,predicate=wicked:select_silver,predicate=wicked:is_sneaking,predicate=!wicked:select_broom_2,predicate=!wicked:select_broom] at @s run particle item lime_stained_glass ~ ~1 ~ 0.2 0.3 0.2 0.01 5


execute as @a[tag=!wicked,tag=!ast_p,tag=!ghost,scores={s=40..},predicate=wicked:select_silver,predicate=!wicked:select_broom,predicate=!wicked:select_broom_2] run tellraw @a ["",{"text":"Dimension : "},{"storage":"wicked.tellraw","nbt":"silver.overworld","interpret":true},{"text":" "},{"storage":"wicked.tellraw","nbt":"silver.nether","interpret":true},{"text":" "},{"storage":"wicked.tellraw","nbt":"silver.end","interpret":true}]


execute as @a[tag=wicked,tag=!ast_p,tag=!ghost,scores={s=40..},predicate=wicked:select_silver,predicate=!wicked:select_broom,predicate=!wicked:select_broom_2] run tellraw @a ["",{"text":"Dimension : "},{"storage":"wicked.tellraw","nbt":"silver.overworld","interpret":true},{"text":" "},{"storage":"wicked.tellraw","nbt":"silver.house","interpret":true},{"text":" "},{"storage":"wicked.tellraw","nbt":"silver.nether","interpret":true},{"text":" "},{"storage":"wicked.tellraw","nbt":"silver.end","interpret":true}]


scoreboard players set @a[scores={s=40..}] s 0



###### TELEPORTATION OVERWORLD
execute as @a[tag=!ast_p,tag=!ghost,scores={choose=0},predicate=wicked:select_silver] at @s run function wicked:silver_slippers/overworld

###### TELEPORTATION NETHER
execute as @a[tag=!ast_p,tag=!ghost,scores={choose=1},predicate=wicked:select_silver] at @s run function wicked:silver_slippers/nether

#########TELEPORTATION END 
execute as @a[tag=!ast_p,tag=!ghost,scores={choose=2},predicate=wicked:select_silver] at @s run function wicked:silver_slippers/end


#########TELEPORTATION MAISON
execute as @a[tag=!ast_p,tag=!ghost,tag=wicked,scores={choose=4},predicate=wicked:select_silver] at @s run function wicked:set_house/house
scoreboard players set @a[scores={choose=0..4},predicate=!wicked:select_silver] choose -1


########## HOUSE SET
execute as @a[tag=wicked,limit=1,scores={click=1..},predicate=wicked:select_sethouse] at @s run function wicked:set_house/set_house





# data modify storage wicked.tellraw silver.end set value {"text":"[The End]","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 2"}}
# data modify storage wicked.tellraw silver.overworld set value {"text":"[Overworld]","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 0"}}
# data modify storage wicked.tellraw silver.nether set value {"text":"[The Nether]","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 1"}}
# data modify storage wicked.tellraw silver.house set value {"text":"[House]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 4"}}

