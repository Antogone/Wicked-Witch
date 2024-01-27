#By Antogone
#start.mcfunction

gamerule keepInventory true


scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add click3 minecraft.used:minecraft.snowball
scoreboard objectives add drop minecraft.dropped:minecraft.feather

tag @s add wicked

team add Witch
team join Witch
team modify Witch nametagVisibility always
team modify Witch color light_purple

tag @s add light_purple




scoreboard objectives add itm dummy

scoreboard objectives add bro dummy
scoreboard objectives add broo dummy
scoreboard objectives add broom dummy

scoreboard objectives add timer dummy

scoreboard objectives add t dummy
scoreboard objectives add itm2 dummy
scoreboard objectives add magie dummy

scoreboard players set @s magie 100


scoreboard objectives add select dummy
scoreboard objectives add s minecraft.custom:minecraft.sneak_time
scoreboard objectives add spell dummy



#Silver Slippers teleportation
scoreboard objectives add x_temp dummy
scoreboard objectives add y_temp dummy
scoreboard objectives add z_temp dummy
scoreboard objectives add net_value dummy
scoreboard players set $net net_value 8



#declare storage wicked.tep
#declare storage wicked.potion 
#declare storage wicked.tellraw
#declare storage wicked.ench
#declare storage wicked.recall



scoreboard objectives add clock dummy
scoreboard objectives add index dummy

scoreboard objectives add incre_one dummy
scoreboard objectives add incre_deux dummy

scoreboard players set $magic_mirror incre_one 1
scoreboard players set $magic_mirror incre_deux 2

scoreboard players set $mirror_entry index 0
scoreboard players set $mirror_exit index 1

data modify storage wicked.tellraw silver.overworld set value {"text":"[Overworld]","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 0"}}

data modify storage wicked.tep Temp.Pos set value [0d,0d,0d]


execute in minecraft:overworld run forceload add -30000000 1600




#Potion Book 
scoreboard objectives add potion_trigger trigger
scoreboard players enable @p[tag=wicked] potion_trigger

#Modify the potion format
scoreboard objectives add P dummy

#Enchanting book
scoreboard objectives add ench_trigger trigger
scoreboard players enable @p[tag=wicked] ench_trigger

#Wicked Rays
scoreboard objectives add steps dummy

scoreboard objectives add typevol dummy
scoreboard players set @s typevol 0

tag @s add broom
scoreboard objectives add choose dummy
scoreboard objectives add equip dummy

tag @s add no_house

scoreboard objectives add trouve dummy
scoreboard objectives add killwitch minecraft.killed:minecraft.witch


attribute @p[tag=wicked] generic.max_health base set 40
attribute @p[tag=wicked] generic.movement_speed base set 0.11
attribute @p[tag=wicked] generic.attack_damage base set 6.0
attribute @p[tag=wicked] generic.armor base set 4.0

bossbar add timer {"text":"Temps restant","color":"red"}
bossbar set timer color red 

advancement grant @s only wicked:witch

scoreboard objectives add effect_none dummy
scoreboard objectives add ench_none dummy


data modify storage wicked.potion Temp.id set value -14
data modify storage wicked.potion Temp.duration set value 200
data modify storage wicked.potion Temp.amplifier set value 4

data modify storage wicked.ench Temp.id set value -14
data modify storage wicked.ench Temp.lvl set value 0
