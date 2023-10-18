##
 # rm_house.mcfunction
 # 
 #
 # Created by .
##
tag @p[tag=house] add no_house
tag @p[tag=house] remove house

kill @e[type=marker,tag=house_ow]
kill @e[type=marker,tag=house_end]
kill @e[type=marker,tag=house_net]

tag @p[tag=house_ow] remove house_ow
tag @p[tag=house_net] remove house_net
tag @p[tag=house_end] remove house_end