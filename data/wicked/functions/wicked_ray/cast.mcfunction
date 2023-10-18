
scoreboard players set @s click 0
execute as @s[scores={magie=..9},tag=wicked] run tellraw @s {"text":"You don't have enough magic to cast the spell ! (cost : 10)","color":"dark_green"}
execute as @s[scores={magie=..9},tag=wicked] run return 0


scoreboard players remove @s magie 10

# Summon a ray at the caster
summon marker ~ ~ ~ {Tags: [ray]}

# Position the ray at the caster's eyes and copy their facing
execute anchored eyes rotated as @s run tp @e[tag=ray,limit=1,sort=nearest] ^ ^ ^ ~ ~

# Process the ray
execute as @e[tag=ray,limit=1,sort=nearest] run function wicked:wicked_ray/process

