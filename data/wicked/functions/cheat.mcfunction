##
 # cheat.mcfunction
 # 
 #
 # Created by Antogone.
##
execute as @s run function wicked:start
tag @s add l20
tag @s add l15
tag @s add l10
tag @s add l30
tag @s add l40


tag @s add broom_fly

tag @s remove light_purple
tag @s add dark_green

scoreboard players set @s magie 500
scoreboard players set #limit magie 500


advancement grant @s from wicked:witch_pendant_adv

execute as @s run function wicked:craft/crafted_witch_pendant
execute as @s run function wicked:craft/crafted_slip
execute as @s run function wicked:craft/crafted_grimmerie
execute as @s run function wicked:craft/crafted_sethouse
execute as @s run function wicked:craft/crafted_companion
execute as @s run function wicked:craft/craft_mirror

execute as @s run function wicked:witch_update/wicked

data modify storage wicked.tellraw silver.end set value {"text":"[The End]","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 2"}}
data modify storage wicked.tellraw silver.nether set value {"text":"[The Nether]","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 1"}}

