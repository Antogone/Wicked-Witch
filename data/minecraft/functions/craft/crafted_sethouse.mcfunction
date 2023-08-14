##
 # crafted_sethouse.mcfunction
 # 
 #
 # Created by .
##
playsound minecraft:entity.witch.ambient master @a
recipe take @s set_house
advancement revoke @s only wicked/set_house_radv

give @s slime_spawn_egg{display:{Name:"{\"text\":\"§2Set House\"}"},EntityTag:{Size:0,wasOnGround:1,NoAI:1,Silent:1,Tags:["set_house"]},Enchantments:[{}]}
clear @s knowledge_book