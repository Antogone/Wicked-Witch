##
 # unistall.mcfunction
 # 
 #
 # Created by Antogone
##
#By Antogone

scoreboard objectives remove click
scoreboard objectives remove click3 
scoreboard objectives remove drop 

team remove witch
scoreboard objectives remove itm 
scoreboard objectives remove bro 
scoreboard objectives remove broo 
scoreboard objectives remove broom 
scoreboard objectives remove t 
scoreboard objectives remove itm2 
scoreboard objectives remove magie 
scoreboard objectives remove select 
scoreboard objectives remove kd
scoreboard objectives remove spell 
scoreboard objectives remove x 
scoreboard objectives remove y 
scoreboard objectives remove z 
scoreboard objectives remove dx 
scoreboard objectives remove dy 
scoreboard objectives remove dz 
gamerule keepInventory true

team modify witch nametagVisibility always
team modify witch color green


scoreboard objectives remove net_value
scoreboard objectives remove x_temp
scoreboard objectives remove y_temp
scoreboard objectives remove z_temp


scoreboard objectives remove P 
scoreboard objectives remove L 
scoreboard objectives remove C 
scoreboard objectives remove R 
scoreboard objectives remove timer

# scoreboard objectives remove ID1 
# scoreboard objectives remove ID2 
# scoreboard objectives remove ID3 
# scoreboard objectives remove ID4 
# scoreboard objectives remove ID5 
# scoreboard objectives remove ID6 
# scoreboard objectives remove ID7 
# scoreboard objectives remove ID8 
# scoreboard objectives remove ID9 
# scoreboard objectives remove ID10 


scoreboard objectives remove D1 
scoreboard objectives remove D2 
scoreboard objectives remove D3 
scoreboard objectives remove D4 
scoreboard objectives remove D5 
scoreboard objectives remove D6 
scoreboard objectives remove D7 
scoreboard objectives remove D8 


scoreboard objectives remove NUMBER 
scoreboard objectives remove CRAFT 
scoreboard objectives remove UNDO 


scoreboard objectives remove ENCH1 
scoreboard objectives remove ENCH2 
scoreboard objectives remove ENCH3 
scoreboard objectives remove ENCH4 
scoreboard objectives remove ENCH5 


scoreboard objectives remove LVL1 
scoreboard objectives remove LVL2 
scoreboard objectives remove LVL3 
scoreboard objectives remove LVL4 
scoreboard objectives remove LVL5 


scoreboard objectives remove A1 
scoreboard objectives remove A2 
scoreboard objectives remove A3 
scoreboard objectives remove A4 
scoreboard objectives remove A5 
scoreboard objectives remove A6 
scoreboard objectives remove A7 
scoreboard objectives remove A8 


scoreboard objectives remove typevol 

scoreboard objectives remove equip 
scoreboard objectives remove s 
scoreboard objectives remove choose 

tag @s remove broom
team remove fix
team remove loc

attribute @s generic.max_health base set 20
attribute @s generic.movement_speed base set 0.10
attribute @s generic.attack_damage base set 1.0
attribute @s generic.armor base set 0.0

tag @s remove wicked

kill @e[tag=wall]
tag @s remove l10
tag @s remove l15
tag @s remove l20
tag @s remove l30
tag @s remove l40
tag @s remove l50
tag @s remove l60
tag @s remove l70
tag @s remove l80

tag @s remove crea
tag @s remove adv
tag @s remove surv
tag @s remove ghost
tag @s remove ast_p

forceload remove all
data remove storage wicked.potion PotionId
data remove storage wicked.tep DimHouse
data remove storage wicked.tep Temp
data remove storage wicked.tep PosHouse
data remove storage wicked.tep house
data remove storage wicked.tellraw silver

data remove storage magic_mirror magic_id
data remove storage magic_mirror info
data remove storage magic_mirror temp

scoreboard objectives remove steps

scoreboard objectives remove index_actu 
scoreboard objectives remove index_futur

scoreboard objectives remove incre_one
scoreboard objectives remove incre_deux

