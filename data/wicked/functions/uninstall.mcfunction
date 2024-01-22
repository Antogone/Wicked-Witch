##
 # unistall.mcfunction
 # 
 #
 # Created by Antogone
##

scoreboard objectives remove click
scoreboard objectives remove click3 
scoreboard objectives remove drop 

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

scoreboard objectives remove net_value
scoreboard objectives remove x_temp
scoreboard objectives remove y_temp
scoreboard objectives remove z_temp


scoreboard objectives remove clock
scoreboard objectives remove killwitch

scoreboard objectives remove P 

scoreboard objectives remove timer


scoreboard objectives remove typevol 

scoreboard objectives remove equip 
scoreboard objectives remove s 
scoreboard objectives remove choose 

tag @s remove broom
team remove fix
team remove loc
team remove Witch

attribute @s generic.max_health base set 20
attribute @s generic.movement_speed base set 0.10
attribute @s generic.attack_damage base set 1.0
attribute @s generic.armor base set 0.0

tag @s remove wicked

kill @e[tag=itm_disp]
kill @e[tag=magic_mirror]

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

advancement revoke @s through wicked:witch_pendant_adv
tag @s remove actif 
tag @s remove broom_shield
tag @s remove wicked 
tag @s remove broom_fly 
tag @s remove l10 
tag @s remove l15 
tag @s remove l20
tag @s remove l30
tag @s remove house
tag @s remove no_house
tag @s remove l40
tag @s remove broom


tag @s remove dark_green
tag @s remove dark_gray
tag @s remove dark_purple
tag @s remove black
tag @s remove light_purple


clear @s carrot_on_a_stick{poofing:1b}
clear @s carrot_on_a_stick{scepter:1b}
clear @s snowball{fireball:1b}
clear @s feather{broom:1b}
clear @s feather{broom:2b}
clear @s carrot_on_a_stick{immo:1b}

clear @s command_block{CustomModelData:14120001}
clear @s red_dye{reloading:1b}
clear @s totem_of_undying{pendant:1b}

scoreboard objectives remove potion_trigger
scoreboard objectives remove trouve
scoreboard objectives remove index
scoreboard objectives remove ench_trigger