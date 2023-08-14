##
 # finghost.mcfunction
 # 
 #
 # Created by .
##

execute as @e[tag=wicked] at @s run gamemode survival @a[tag=surv,limit=1]
execute as @e[tag=wicked] at @s run gamemode creative @a[tag=crea,limit=1]
execute as @e[tag=wicked] at @s run gamemode adventure @a[tag=adv,limit=1]


tag @a[tag=wicked] remove crea
tag @a[tag=wicked] remove surv
tag @a[tag=wicked] remove adv
tag @a[tag=wicked] remove ghost

