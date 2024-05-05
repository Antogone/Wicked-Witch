#By Antogone
#start.mcfunction

scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add click3 minecraft.used:minecraft.snowball
scoreboard objectives add drop minecraft.dropped:minecraft.feather

scoreboard objectives add itm dummy

scoreboard objectives add bro dummy
scoreboard objectives add broo dummy
scoreboard objectives add broom dummy

scoreboard objectives add timer dummy

scoreboard objectives add t dummy
scoreboard objectives add itm2 dummy
scoreboard objectives add magie dummy



scoreboard objectives add select dummy
scoreboard objectives add s minecraft.custom:minecraft.sneak_time
scoreboard objectives add spell dummy



#Silver Slippers teleportation
scoreboard objectives add x_temp dummy
scoreboard objectives add y_temp dummy
scoreboard objectives add z_temp dummy
scoreboard objectives add net_value dummy

#declare storage wicked.tep
#declare storage wicked.potion 
#declare storage wicked.tellraw
#declare storage wicked.ench



scoreboard objectives add clock dummy
scoreboard objectives add index dummy

scoreboard objectives add incre_one dummy
scoreboard objectives add incre_deux dummy


data modify storage wicked.tellraw silver.overworld set value {"text":"[Overworld]","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 0"}}


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

scoreboard objectives add choose dummy
scoreboard objectives add equip dummy


scoreboard objectives add trouve dummy
scoreboard objectives add killwitch minecraft.killed:minecraft.witch


bossbar add timer {"text":"Temps restant","color":"red"}
bossbar set timer color red 

scoreboard objectives add effect_none dummy
scoreboard objectives add ench_none dummy

scoreboard objectives add wicked_created trigger
