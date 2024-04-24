###########################
# WITCH'S BROMM
###########################


item replace entity @a[tag=wicked,limit=1,gamemode=!spectator,predicate=wicked:select_broom_2] armor.head with command_block[unbreakable={},enchantment_glint_override=1b,custom_model_data=14120001,custom_name='{"color":"dark_green","text":"Witch\'s Broom"}',block_entity_data={id:"minecraft:command_block",CustomName:'{"color":"dark_green","text":"Witch\'s Broom"}'}]


execute as @a[tag=wicked,scores={broo=1},gamemode=!spectator] at @s run function wicked:broom/fly
execute as @a[tag=wicked,scores={broo=2..},gamemode=!spectator] run effect give @s slow_falling 1 0 true





