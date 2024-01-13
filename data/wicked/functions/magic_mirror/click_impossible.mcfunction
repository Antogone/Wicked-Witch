##
 # click_impossible.mcfunction
 # 
 #
 # Created by Antogone.
##
# Un-Tag the player who interacted with the chunk
execute on target run tag @s remove Interactor

# Remove interacted tag
data remove entity @s interaction