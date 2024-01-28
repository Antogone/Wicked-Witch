##
 # magic_wall.mcfunction
 # 
 #
 # Created by Antogone.
##


##########################
# MAGIC WALL
##########################

# CREATION
execute as @a[scores={spell=4,magie=15..},tag=wicked] run loot give @s loot wicked:item/wall
execute at @a[scores={spell=4,magie=..14},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}


execute as @e[tag=wall2,type=slime] at @s run summon marker ~ ~ ~ {Tags:["wall"],NoGravity:1b,Small:1,Invisible:1,NoBasePlate:1}
execute as @e[tag=wall2,type=slime] at @s run kill @e[tag=wall2,type=slime]
execute as @e[tag=wall2,type=slime] at @s run summon marker ~ ~ ~ {Invisible:1b,Tags:["rmvitm"]}

execute as @e[tag=rmvitm] at @s run kill @e[tag=wall2,distance=..2]
execute as @e[tag=rmvitm] at @s run kill @e[type=item,distance=..2]
execute as @e[tag=rmvitm] at @s run kill @e[tag=rmvitm,distance=..2]

execute as @e[tag=wall] at @s if block ~ ~ ~ #minecraft:ray_permeable run fill ~ ~ ~ ~ ~ ~ lime_stained_glass replace air


execute as @e[tag=wall] at @s run kill @e[nbt={Item:{id:"minecraft:slime_ball"}},distance=..2]
execute at @a[scores={spell=4,magie=..14},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}
execute as @a[scores={spell=4,magie=15..},tag=wicked] run scoreboard players remove @s magie 15
execute as @a[scores={spell=4},tag=wicked] run scoreboard players set @s spell 0



# DESTRUCTION
execute as @a[scores={spell=5,magie=5..},tag=wicked] run loot give @s loot wicked:item/undo_wall
execute at @a[scores={spell=5,magie=..4},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the spell !","color":"dark_green"}


execute as @a[scores={spell=5,magie=15..},tag=wicked] run scoreboard players remove @s magie 15
execute as @a[scores={spell=5},tag=wicked] run scoreboard players set @s spell 0

execute as @e[tag=dwall2,type=slime] at @s run kill @e[tag=wall,distance=..2]
execute as @e[tag=dwall2,type=slime] at @s run summon marker ~ ~ ~ {Invisible:1b,Tags:["rmvitm"]}

execute as @e[tag=rmvitm] at @s run kill @e[tag=dwall2,distance=..2]
execute as @e[tag=rmvitm] at @s run kill @e[type=item,distance=..2]
execute as @e[tag=rmvitm] at @s run kill @e[tag=rmvitm,distance=..2]


# CROSSING
execute at @e[tag=wall] if entity @e[distance=..2,tag=wicked,predicate=wicked:select_spellbook] run fill ~ ~ ~ ~ ~ ~ air replace lime_stained_glass

execute at @e[tag=wall] if entity @e[distance=..2,tag=wicked,predicate=wicked:select_pendant] run fill ~ ~ ~ ~ ~ ~ air replace lime_stained_glass

