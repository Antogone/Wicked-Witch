playsound minecraft:block.beacon.power_select master @a

execute in minecraft:overworld run forceload add -30000000 1600

execute in minecraft:overworld positioned -30000000 300 1600 run summon armor_stand -30000000 300 1600 {PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["hold"]}
execute in minecraft:overworld positioned -30000000 300 1600 run summon armor_stand -30000000 300 1600 {PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["hold2"]}

item replace entity @e[tag=hold] armor.head from entity @a[tag=wicked,limit=1] hotbar.0
item replace entity @e[tag=hold] weapon.mainhand from entity @a[tag=wicked,limit=1] hotbar.1
item replace entity @e[tag=hold] weapon.offhand from entity @a[tag=wicked,limit=1] hotbar.2

item replace entity @e[tag=hold2] armor.head from entity @a[tag=wicked,limit=1] hotbar.3
item replace entity @e[tag=hold2] weapon.mainhand from entity @a[tag=wicked,limit=1] hotbar.4
item replace entity @e[tag=hold2] weapon.offhand from entity @a[tag=wicked,limit=1] armor.head

item replace entity @a[tag=wicked] hotbar.0 with air
item replace entity @a[tag=wicked] hotbar.1 with air
item replace entity @a[tag=wicked] hotbar.2 with air
item replace entity @a[tag=wicked] hotbar.3 with air
item replace entity @a[tag=wicked] hotbar.4 with air
item replace entity @a[tag=wicked] armor.head with air


tag @a[tag=wicked,limit=1] add actif
