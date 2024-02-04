##
 # locked.mcfunction
 # 
 #
 # Created by Antogone.
##
execute as @p[tag=Interactor,predicate=!wicked:select_pendant,sort=nearest] at @s run playsound entity.witch.death master @s ~ ~ ~
tellraw @p[tag=Interactor,predicate=!wicked:select_pendant,sort=nearest] {"text":"Mirror Locked ! You can't use it","color":"dark_red"}
execute on target run tag @s remove Interactor
particle minecraft:dust 0.773 0.043 0.043 2 ^ ^ ^ 0.5 1 0.5 5 200 force
