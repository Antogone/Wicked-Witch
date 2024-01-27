##
 # set_kill.mcfunction
 # 
 #
 # Created by Antogone.
##
advancement revoke @s only wicked:kill_heart
data modify storage wicked.heart heart.uuid set from entity @s SelectedItem.tag.uuid
function wicked:heart_ripping/kill_heart with storage wicked.heart heart
execute as @s run item replace entity @s weapon.mainhand with air
