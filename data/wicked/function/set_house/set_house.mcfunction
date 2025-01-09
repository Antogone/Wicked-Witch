##
 # set_house.mcfunction
 # 
 #
 # Created by .
##
data modify storage wicked.tellraw silver.house set value {"text":"[House]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s choose 4"}}


data modify storage wicked.tep house.dim set from entity @p[tag=wicked] Dimension
data modify storage wicked.tep house.x set from entity @p[tag=wicked] Pos[0]
data modify storage wicked.tep house.y set from entity @p[tag=wicked] Pos[1]
data modify storage wicked.tep house.z set from entity @p[tag=wicked] Pos[2]

clear @p[tag=wicked] carrot_on_a_stick[custom_data={house:1b}] 1
scoreboard players set @p[tag=wicked] click 0


tellraw @s [{"text":"House correctly saved","color":"green"},{"text":" "}]