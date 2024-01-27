##
 # click_impossible.mcfunction
 # 
 #
 # Created by Antogone.
##
# Un-Tag the player who interacted with the chunk
tag @s remove Interactor
tellraw @s {"text":"You have to place the exit mirror !","color":"dark_green"}