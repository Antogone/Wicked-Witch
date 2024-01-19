
##########################
# IDENTIFICATION
#########################
scoreboard players set @a[tag=wicked,limit=1,predicate=wicked:select_silver] equip 1

scoreboard players set @a[tag=wicked,limit=1,predicate=!wicked:select_silver] equip 0


##########################
# Affichage
#########################
#{"text":"[Wicked]","color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 3"}}

execute as @a[tag=!ast_p,tag=!ghost,scores={equip=1,bro=1},predicate=wicked:is_sneaking,predicate=!wicked:select_broom_2,predicate=!wicked:select_broom] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.2 0.3 0.2 0.1 5



execute as @a[tag=!ast_p,tag=!ghost,scores={equip=1,s=40..,bro=1},predicate=!wicked:select_broom,predicate=!wicked:select_broom_2] run tellraw @a ["",{"text":"Dimension : "},{"storage":"wicked.tellraw","nbt":"silver.overworld","interpret":true},{"text":" "},{"storage":"wicked.tellraw","nbt":"silver.house","interpret":true},{"text":" "},{"storage":"wicked.tellraw","nbt":"silver.nether","interpret":true},{"text":" "},{"storage":"wicked.tellraw","nbt":"silver.end","interpret":true}]



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





# data modify storage wicked.tellraw silver.end set value {"text":"[The End]","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 2"}}
# data modify storage wicked.tellraw silver.overworld set value {"text":"[Overworld]","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 0"}}
# data modify storage wicked.tellraw silver.nether set value {"text":"[The Nether]","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 1"}}
# data modify storage wicked.tellraw silver.house set value {"text":"[House]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 4"}}

