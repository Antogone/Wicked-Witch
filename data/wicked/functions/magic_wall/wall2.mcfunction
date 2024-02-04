##
 # wall2.mcfunction
 # 
 #
 # Created by Antogone.
##
summon marker ~ ~ ~ {Tags:["wall"],NoGravity:1b,Small:1,Invisible:1,NoBasePlate:1}
kill @e[tag=wall2,type=slime]
kill @e[type=item,distance=..2]

