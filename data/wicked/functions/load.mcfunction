tellraw @a [{"text": "Loaded ","color": "yellow"},{"text": "Wicked Witch ","color": "dark_green","bold": true},{"text": "(V.4.5.0 1.20.5)","color": "dark_green"},{"text": " successfully"}]

attribute @p[tag=wicked] generic.max_health base set 40
attribute @p[tag=wicked] generic.movement_speed base set 0.11
attribute @p[tag=wicked] generic.attack_damage base set 6.0
attribute @p[tag=wicked] generic.armor base set 4.0

execute in minecraft:overworld run forceload add -30000000 1600

schedule function wicked:cauldron/cauldron 1t
schedule function wicked:cauldron/cauldron_particle 1t
schedule function wicked:rechargement/main 1t

scoreboard players enable @p[tag=wicked] potion_trigger
scoreboard players enable @p[tag=wicked] ench_trigger

function wicked:scoreboard