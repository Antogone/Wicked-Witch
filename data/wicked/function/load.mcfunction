tellraw @a [{"text": "Loaded ","color": "yellow"},{"text": "Wicked Witch ","color": "dark_green","bold": true},{"text": "(V.4.5.7 25w02a)","color": "dark_green"},{"text": " successfully"}]

attribute @p[tag=wicked] max_health base set 40
attribute @p[tag=wicked] movement_speed base set 0.11
attribute @p[tag=wicked] attack_damage base set 6.0
attribute @p[tag=wicked] armor base set 4.0

execute in minecraft:overworld run forceload add -30000000 1600

schedule function wicked:cauldron/cauldron 1t
schedule function wicked:cauldron/cauldron_particle 1t
schedule function wicked:rechargement/main 1t

scoreboard players enable @p[tag=wicked] potion_trigger
scoreboard players enable @p[tag=wicked] ench_trigger

function wicked:scoreboard

