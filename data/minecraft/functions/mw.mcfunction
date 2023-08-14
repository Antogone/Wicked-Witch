summon item ~ ~ ~ {Item:{id:"minecraft:slime_spawn_egg",Count:10b,tag:{display:{Name:"{\"text\":\"§2Magic Wall\"}"},EntityTag:{Size:0,wasOnGround:1,NoAI:1,Silent:1,Tags:["wall2"]}}}}
execute at @a[scores={spell=4,magie=..14},tag=wicked] run tellraw @s {"text":"You don't select enough magic to cast the spell !","color":"dark_green"}
execute as @e[tag=wall2,type=slime] at @s run summon marker ~ ~ ~ {Tags:["wall"],NoGravity:1b,Small:1,Invisible:1,NoBasePlate:1}
execute as @e[tag=wall2,type=slime] at @s run kill @e[tag=wall2,type=slime]
execute as @e[tag=wall] at @s run kill @e[nbt={Item:{id:"minecraft:slime_ball"}},distance=..2]
execute at @a[scores={spell=4,magie=..14},tag=wicked] run tellraw @s {"text":"You don't select enough magic to cast the spell !","color":"dark_green"}
execute as @a[scores={spell=4,magie=15..},tag=wicked] run scoreboard players remove @s magie 15
execute as @a[scores={spell=4},tag=wicked] run scoreboard players set @s spell 0