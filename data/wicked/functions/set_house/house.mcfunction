#house.mcfunction


execute as @e[scores={equip=1,choose=0..5}] at @s anchored eyes run particle cloud ^ ^ ^ 0.5 -1 0.5 0.1 150


scoreboard players set @a[scores={equip=1}] choose -1
scoreboard players set @a[scores={s=1..}] s 0

execute at @p[tag=wicked] run tag @e[predicate=wicked:accompagnant,distance=..3] add accp

execute at @p[tag=wicked] run function wicked:particle
execute at @p[tag=wicked] run function wicked:particle


function wicked:set_house/teleport with storage wicked.tep house




# execute if entity @p[tag=house_ow] run execute in minecraft:overworld summon marker run function wicked:set_house/ow_house
# execute if entity @p[tag=house_end] run execute in minecraft:the_end summon marker run function wicked:set_house/end_house
# execute if entity @p[tag=house_net] run execute in minecraft:the_nether summon marker run function wicked:set_house/net_house