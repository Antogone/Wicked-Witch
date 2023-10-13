execute as @e[tag=PAJ] at @s run teleport @a[tag=wicked,limit=1] @s

execute as @e[tag=PAJ] at @s run gamemode survival @a[tag=surv,limit=1]
execute as @e[tag=PAJ] at @s run gamemode creative @a[tag=crea,limit=1]
execute as @e[tag=PAJ] at @s run gamemode adventure @a[tag=adv,limit=1]


tag @a[tag=wicked] remove crea
tag @a[tag=wicked] remove surv
tag @a[tag=wicked] remove adv
tag @a[tag=wicked] remove ast_p


execute as @e[tag=PAJ] at @s run kill @s