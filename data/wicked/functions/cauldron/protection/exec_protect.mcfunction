##
 # exec_protect.mcfunction
 # 
 #
 # Created by Antogone.
##
## Small
execute as @s[tag=!large] at @s run function wicked:cauldron/protection/exec_small_self
execute as @s[tag=!large] at @s run function wicked:cauldron/protection/exec_small_mob


## Large 
execute as @e[tag=large] at @s run function wicked:cauldron/protection/exec_large_self
execute as @e[tag=large] at @s run function wicked:cauldron/protection/exec_large_mob



