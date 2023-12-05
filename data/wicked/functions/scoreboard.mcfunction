scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add click3 minecraft.used:minecraft.snowball
scoreboard objectives add drop minecraft.dropped:minecraft.carrot_on_a_stick

team add witch


scoreboard objectives add itm dummy
scoreboard objectives add charge dummy


scoreboard objectives add bro dummy
scoreboard objectives add broo dummy
scoreboard objectives add broom dummy

scoreboard objectives add timer dummy

scoreboard objectives add t dummy
scoreboard objectives add itm2 dummy
scoreboard objectives add magie dummy


scoreboard objectives add select dummy
scoreboard objectives add kd dummy 
scoreboard objectives add s minecraft.custom:minecraft.sneak_time

scoreboard objectives add spell dummy

scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add dx dummy
scoreboard objectives add dy dummy
scoreboard objectives add dz dummy

scoreboard objectives add x_temp dummy
scoreboard objectives add y_temp dummy
scoreboard objectives add z_temp dummy
scoreboard objectives add net_value dummy
scoreboard players set $net net_value 8

#declare storage wicked.tep
#declare storage wicked.potion 

data modify storage wicked.potion PotionId set value ["minecraft:","minecraft:","minecraft:","minecraft:","minecraft:","minecraft:","minecraft:","minecraft:"]
data modify storage wicked.tep Temp.Pos set value [0d,0d,0d]
data modify storage wicked.tep Temp.PosHouse set value [0d,0d,0d]

execute in minecraft:overworld run forceload add -30000000 1600

team modify witch nametagVisibility always
team modify witch color green

scoreboard objectives add P dummy
scoreboard objectives add L dummy
scoreboard objectives add C dummy
scoreboard objectives add R dummy


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
scoreboard objectives add steps dummy

scoreboard objectives add typevol dummy


scoreboard objectives add choose dummy
scoreboard objectives add equip dummy


bossbar add timer {"text":"Temps restant","color":"red"}
bossbar set timer color red 