##
 # craft.mcfunction
 # 
 #
 # Created by Antogone.
##
playsound minecraft:entity.witch.ambient master @a
recipe take @s wicked:mirror
advancement revoke @s only wicked:magic_mirror_radv


execute unless entity @s[tag=mirror_1] run loot give @s loot wicked:item/magic_mirror_entry
execute if entity @s[tag=mirror_1] run loot give @s loot wicked:item/magic_mirror_exit

clear @s knowledge_book

