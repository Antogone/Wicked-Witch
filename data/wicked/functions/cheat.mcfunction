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

tag @s add l50
tag @s add l60
tag @s add l70
tag @s add l80

scoreboard players set @s magie 500

execute as @s run function wicked:craft/crafted_witch_pendant
execute as @s run function wicked:craft/crafted_slip
execute as @s run function wicked:craft/crafted_grimmerie
execute as @s run function wicked:craft/crafted_sethouse
