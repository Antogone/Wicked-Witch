##
 # recharge.mcfunction
 # 
 #
 # Created by Antogone.
##
#RECHARGE
# scoreboard players add @a[tag=wicked] itm 1
execute as @p[tag=wicked,limit=1] run function wicked:rechargement/recharge

schedule function wicked:rechargement/main 1s
