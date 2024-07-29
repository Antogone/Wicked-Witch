##
 # effect.mcfunction
 # 
 #
 # Created by Antogone.
##
effect give @s weakness 10 0 true
execute if entity @p[tag=wicked,tag=dark_green] run damage @s 16 minecraft:generic_kill by @p[tag=wicked]
execute if entity @p[tag=wicked,tag=black] run damage @s 14 minecraft:generic_kill by @p[tag=wicked]
execute if entity @p[tag=wicked,tag=dark_gray] run damage @s 10 minecraft:generic_kill by @p[tag=wicked]
execute if entity @p[tag=wicked,tag=dark_purple] run damage @s 8 minecraft:generic_kill by @p[tag=wicked]
execute if entity @p[tag=wicked,tag=light_purple] run damage @s 6 minecraft:generic_kill by @p[tag=wicked]
