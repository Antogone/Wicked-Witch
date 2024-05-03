##
 # particle.mcfunction
 # 
 #
 # Created by Antogone.
##
execute if entity @p[tag=wicked,tag=light_purple] run particle minecraft:dust{color: [0.729f,0.518f,0.973f], scale:1f} ^ ^ ^ 0.3 1 0.3 50 3 force
execute if entity @p[tag=wicked,tag=dark_purple] run particle minecraft:dust{color: [0.565f,0.184f,1f], scale:1f} ^ ^ ^ 0.3 1 0.3 50 3 force
execute if entity @p[tag=wicked,tag=dark_gray] run particle minecraft:dust{color: [0.533f,0.533f,0.533f], scale:1f} ^ ^ ^ 0.3 1 0.3 50 3 force
execute if entity @p[tag=wicked,tag=black] run particle minecraft:dust{color: [0.051f,0.008f,0.102f], scale:1f} ^ ^ ^ 0.3 1 0.3 50 3 force
execute if entity @p[tag=wicked,tag=dark_green] run particle minecraft:dust{color: [0.498f,1f,0.345f], scale:1f} ^ ^ ^ 0.3 1 0.3 50 3 force

