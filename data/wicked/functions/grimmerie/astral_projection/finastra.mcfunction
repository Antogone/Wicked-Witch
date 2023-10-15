execute at @a[tag=wicked] run summon marker ~ ~ ~ {NoGravity:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["Pend"]}

data modify entity @e[type=marker,tag=Pend,limit=1] Pos set from storage wicked.tep Temp.Pos
# Teleport player
tp @p[tag=wicked,limit=1] @e[type=marker,tag=Pend,limit=1]
effect give @p[tag=wicked] slow_falling 10 5 true

# Remove marker
kill @e[type=marker,tag=Pend,limit=1]

gamemode survival @a[tag=surv,limit=1]
gamemode creative @a[tag=crea,limit=1]
gamemode adventure @a[tag=adv,limit=1]


tag @a[tag=wicked] remove crea
tag @a[tag=wicked] remove surv
tag @a[tag=wicked] remove adv
tag @a[tag=wicked] remove ast_p


kill @e[tag=PAJ]