#By Bomerie
#start.mcfunction
execute as @s run scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
execute as @s run scoreboard objectives add click3 minecraft.used:minecraft.snowball
execute as @s run scoreboard objectives add drop minecraft.dropped:minecraft.carrot_on_a_stick

tag @s add wicked
team add witch
team join witch

execute as @s run scoreboard objectives add itm dummy
execute as @s run scoreboard objectives add charge dummy


execute as @s run scoreboard objectives add bro dummy
execute as @s run scoreboard objectives add broo dummy
execute as @s run scoreboard objectives add broom dummy

execute as @s run scoreboard objectives add timer dummy

execute as @s run scoreboard objectives add t dummy
execute as @s run scoreboard objectives add itm2 dummy
execute as @s run scoreboard objectives add magie dummy

scoreboard players set @s magie 100


execute as @s run scoreboard objectives add select dummy
execute as @s run scoreboard objectives add kd dummy 
execute as @s run scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
execute as @s run scoreboard objectives add s minecraft.custom:minecraft.sneak_time

execute as @s run scoreboard objectives add spell dummy



execute as @s run scoreboard objectives add x dummy
execute as @s run scoreboard objectives add y dummy
execute as @s run scoreboard objectives add z dummy
execute as @s run scoreboard objectives add dx dummy
execute as @s run scoreboard objectives add dy dummy
execute as @s run scoreboard objectives add dz dummy

execute as @s run scoreboard objectives add x_temp dummy
execute as @s run scoreboard objectives add y_temp dummy
execute as @s run scoreboard objectives add z_temp dummy
execute as @s run scoreboard objectives add net_value dummy
scoreboard players set $net net_value 8
#declare storage wicked.tep
#declare storage wicked.potion 

data modify storage wicked.potion PotionId set value ["minecraft:","minecraft:","minecraft:","minecraft:","minecraft:","minecraft:","minecraft:","minecraft:"]
data modify storage wicked.tep Temp.Pos set value [0d,0d,0d]
data modify storage wicked.tep Temp.PosHouse set value [0d,0d,0d]

execute in minecraft:overworld run forceload add -30000000 1600

gamerule keepInventory true

team modify witch nametagVisibility always
team modify witch color green

attribute @p[tag=wicked] minecraft:generic.max_health base set 40
attribute @p[tag=wicked] generic.movement_speed base set 0.11

scoreboard objectives add P dummy
scoreboard objectives add L dummy
scoreboard objectives add C dummy
scoreboard objectives add R dummy

# scoreboard objectives add ID1 dummy
# scoreboard objectives add ID2 dummy
# scoreboard objectives add ID3 dummy
# scoreboard objectives add ID4 dummy
# scoreboard objectives add ID5 dummy
# scoreboard objectives add ID6 dummy
# scoreboard objectives add ID7 dummy
# scoreboard objectives add ID8 dummy
# scoreboard objectives add ID9 dummy
# scoreboard objectives add ID10 dummy


scoreboard objectives add D1 dummy
scoreboard objectives add D2 dummy
scoreboard objectives add D3 dummy
scoreboard objectives add D4 dummy
scoreboard objectives add D5 dummy
scoreboard objectives add D6 dummy
scoreboard objectives add D7 dummy
scoreboard objectives add D8 dummy


scoreboard objectives add NUMBER dummy
scoreboard objectives add CRAFT dummy
scoreboard objectives add UNDO dummy


scoreboard objectives add ENCH1 dummy
scoreboard objectives add ENCH2 dummy
scoreboard objectives add ENCH3 dummy
scoreboard objectives add ENCH4 dummy
scoreboard objectives add ENCH5 dummy


scoreboard objectives add LVL1 dummy
scoreboard objectives add LVL2 dummy
scoreboard objectives add LVL3 dummy
scoreboard objectives add LVL4 dummy
scoreboard objectives add LVL5 dummy


scoreboard objectives add A1 dummy
scoreboard objectives add A2 dummy
scoreboard objectives add A3 dummy
scoreboard objectives add A4 dummy
scoreboard objectives add A5 dummy
scoreboard objectives add A6 dummy
scoreboard objectives add A7 dummy
scoreboard objectives add A8 dummy


scoreboard objectives add typevol dummy
scoreboard players set @s typevol 0

tag @s add broom

scoreboard objectives add choose dummy
scoreboard objectives add equip dummy
tag @s add no_house

attribute @p[tag=wicked] generic.max_health base set 40
attribute @p[tag=wicked] generic.movement_speed base set 0.12
attribute @p[tag=wicked] generic.attack_damage base set 6.0
attribute @p[tag=wicked] generic.armor base set 4.0

bossbar add timer {"text":"Temps restant","color":"red"}
bossbar set timer color red 
