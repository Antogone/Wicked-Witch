##
 # locked.mcfunction
 # 
 #
 # Created by Antogone.
##
execute as @p[tag=Interactor,predicate=!wicked:select_pendant,sort=nearest] at @s run playsound entity.witch.death master @s ~ ~ ~
tellraw @p[tag=Interactor,predicate=!wicked:select_pendant,sort=nearest] {"text":"Mirror Locked ! You can't use it","color":"dark_red"}
execute on target run tag @s remove Interactor
particle minecraft:dust{color: [0.773f,0.043f,0.043f], scale:2f} ^ ^ ^ 0.5 1 0.5 5 200 force
