function wicked:immobilization/finfix
tag @s remove fixa
scoreboard players reset @s clock
attribute @s[type=player] generic.gravity base set 0.08
