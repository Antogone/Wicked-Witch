
##########################
# Affichage
#########################

execute as @a[tag=!ast_p,tag=!ghost,predicate=wicked:select_silver,predicate=!wicked:select_broom,predicate=!wicked:select_broom_2] run function wicked:silver_slippers/selector


scoreboard players set @a[scores={s=40..}] s 0





## Reset Choix 
scoreboard players set @a[scores={choose=0..4},predicate=!wicked:select_silver] choose -1

########## HOUSE SET
execute as @a[tag=wicked,limit=1,scores={click=1..},predicate=wicked:select_sethouse] at @s run function wicked:set_house/set_house





# data modify storage wicked.tellraw silver.end set value {"text":"[The End]","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 2"}}
# data modify storage wicked.tellraw silver.overworld set value {"text":"[Overworld]","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 0"}}
# data modify storage wicked.tellraw silver.nether set value {"text":"[The Nether]","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 1"}}
# data modify storage wicked.tellraw silver.house set value {"text":"[House]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 4"}}

