##
 # book_test.mcfunction
 # 
 #
 # Created by Antogone.
##

 give @s written_book[written_book_content={pages:["{\"color\":\"dark_green\",\"text\":\"⬛ Book of Potions ⬛\\n\\n▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇\\nCreate The potion you desire with this Potion spellbook !\\nWork only for the Wicked Witch\\n▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇\"}","{\"extra\":[{\"color\":\"dark_green\",\"text\":\"⬛ Effect ⬛\"},{\"text\":\"\\n\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:speed\\\"\"},\"text\":\"⬛ Speed\"},{\"text\":\"\\n\"},{\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:slowness\\\"\"},\"text\":\"⬛ Slowness\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:haste\\\"\"},\"text\":\"⬛ Haste\"},{\"text\":\"\\n\"},{\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:mining_fatigue\\\"\"},\"text\":\"⬛ Mining Fatigue\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:strength\\\"\"},\"text\":\"⬛ Strength\"},{\"color\":\"dark_green\",\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:instant_health\\\"\"},\"text\":\"⬛ Instant Health\"},{\"text\":\"\\n\"},{\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:instant_damage\\\"\"},\"text\":\"⬛ Instant Damage\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:jump_boost\\\"\"},\"text\":\"⬛ Jump Boost\"},{\"text\":\"\\n\"},{\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:nausea\\\"\"},\"text\":\"⬛ Nausea\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:regeneration\\\"\"},\"text\":\"⬛ Regeneration\"},{\"text\":\"\\n \"}],\"text\":\"\"}","{\"extra\":[{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:resistance\\\"\"},\"text\":\"⬛ Resistance\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:fire_resistance\\\"\"},\"text\":\"⬛ Fire Resistance \"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:water_breathing\\\"\"},\"text\":\"⬛ Water Breathing\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:invisibility\\\"\"},\"text\":\"⬛ Invisibility\"},{\"text\":\"\\n\"},{\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:blindness\\\"\"},\"text\":\"⬛ Blindness\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:night_vision\\\"\"},\"text\":\"⬛ Night Vision\"},{\"text\":\"\\n\"},{\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:hunger\\\"\"},\"text\":\"⬛ Hunger\"},{\"color\":\"dark_red\",\"text\":\"\\n\"},{\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:weakness\\\"\"},\"text\":\"⬛ Weakness\"},{\"color\":\"dark_red\",\"text\":\"\\n\"},{\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:poison\\\"\"},\"text\":\"⬛ Poison\"},{\"color\":\"dark_red\",\"text\":\"\\n\"},{\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:wither\\\"\"},\"text\":\"⬛ Wither\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:health_boost\\\"\"},\"text\":\"⬛ Health Boost\"},{\"color\":\"dark_green\",\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:absorption\\\"\"},\"text\":\"⬛ Absorption\"}],\"text\":\"\"}","{\"extra\":[{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:saturation\\\"\"},\"text\":\"⬛ Saturation\"},{\"color\":\"dark_green\",\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:glowing\\\"\"},\"text\":\"⬛ Glowing\"},{\"text\":\"\\n\"},{\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:levitation\\\"\"},\"text\":\"⬛ Levitation\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:luck\\\"\"},\"text\":\"⬛ Luck\"},{\"text\":\"\\n\"},{\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:unluck\\\"\"},\"text\":\"⬛ Bad Luck\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:slow_falling\\\"\"},\"text\":\"⬛ Slow Falling\"},{\"color\":\"dark_green\",\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:conduit_power\\\"\"},\"text\":\"⬛ Conduit Power\"},{\"color\":\"dark_green\",\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:dolphins_grace\\\"\"},\"text\":\"⬛ Dolphin's Grace\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:hero_of_the_village\\\"\"},\"text\":\"⬛ Hero of the Village\"},{\"text\":\"\\n\"},{\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:Bad Omen\\\"\"},\"text\":\"⬛ Bad Omen\"},{\"color\":\"dark_red\",\"text\":\"\\n\"},{\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.id set value \\\"minecraft:darkness\\\"\"},\"text\":\"⬛ Darkness\"},{\"color\":\"dark_red\",\"text\":\"\\n\"},{\"text\":\"\\n \"}],\"text\":\"\"}","{\"extra\":[{\"color\":\"dark_green\",\"text\":\"⬛ Duration ⬛\"},{\"text\":\"\\n\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.duration set value 200\"},\"text\":\"⬛ 10\\\"\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.duration set value 400\"},\"text\":\"⬛ 20\\\"\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.duration set value 600\"},\"text\":\"⬛ 30\\\"\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.duration set value 1200\"},\"text\":\"⬛ 1'\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.duration set value 1800\"},\"text\":\"⬛ 1'30\\\"\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.duration set value 2400\"},\"text\":\"⬛ 2'\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.duration set value 3600\"},\"text\":\"⬛ 3'\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.duration set value 4800\"},\"text\":\"⬛ 4'\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.duration set value 6000\"},\"text\":\"⬛ 5'\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.duration set value 7200\"},\"text\":\"⬛ 6'\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.duration set value 8400\"},\"text\":\"⬛ 7'\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.duration set value 9600\"},\"text\":\"⬛ 8'\"},{\"text\":\"\\n \"}],\"text\":\"\"}","{\"extra\":[{\"color\":\"dark_green\",\"text\":\"⬛ Amplifier⬛\"},{\"text\":\"\\n\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.amplifier set value 0\"},\"text\":\"⬛ 1\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.amplifier set value 1\"},\"text\":\"⬛ 2\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.amplifier set value 2\"},\"text\":\"⬛ 3\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.amplifier set value 3\"},\"text\":\"⬛ 4\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data modify storage wicked.potion Temp.amplifier set value 4\"},\"text\":\"⬛ 5\"},{\"text\":\"\\n\\n\"},{\"color\":\"dark_green\",\"text\":\"⬛ Type of Potion ⬛\"},{\"text\":\"\\n\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s P 0\"},\"text\":\"⬛ Potion\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s P 2\"},\"text\":\"⬛ Splash\"},{\"text\":\"\\n\"},{\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s P 1\"},\"text\":\"⬛ Lingering\"},{\"text\":\"\\n \"}],\"text\":\"\"}","{\"extra\":[{\"color\":\"aqua\",\"text\":\" \\n\\n  \"},{\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function wicked:potion_book/storage with storage wicked.potion Temp\"},\"text\":\"⬛   Next  ⬛\"},{\"text\":\"\\n\"},{\"color\":\"green\",\"text\":\"  \"},{\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function wicked:potion_book/lance_crea\"},\"text\":\"⬛   Craft ⬛\"},{\"text\":\"\\n\"},{\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function wicked:potion_book/undo\"},\"text\":\"  ⬛  Undo ⬛\"}],\"text\":\"\"}"],title:"§2Book of Potions",author:"Antogone",resolved:1b},custom_data={book_potion:1b}]

#  give @s written_book{pages: ['{"color":"dark_green","text":"⬛ Book of Potions ⬛\\n\\n▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇\\nCreate The potion you desire with this Potion spellbook !\\nWork only for the Wicked Witch\\n▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇"}', '{"extra":[{"color":"dark_green","text":"⬛ Effect ⬛"},{"text":"\\n\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:speed\\""},"text":"⬛ Speed"},{"text":"\\n"},{"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:slowness\\""},"text":"⬛ Slowness"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:haste\\""},"text":"⬛ Haste"},{"text":"\\n"},{"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:mining_fatigue\\""},"text":"⬛ Mining Fatigue"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:strength\\""},"text":"⬛ Strength"},{"color":"dark_green","text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:instant_health\\""},"text":"⬛ Instant Health"},{"text":"\\n"},{"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:instant_damage\\""},"text":"⬛ Instant Damage"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:jump_boost\\""},"text":"⬛ Jump Boost"},{"text":"\\n"},{"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:nausea\\""},"text":"⬛ Nausea"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:regeneration\\""},"text":"⬛ Regeneration"},{"text":"\\n "}],"text":""}', '{"extra":[{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:resistance\\""},"text":"⬛ Resistance"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:fire_resistance\\""},"text":"⬛ Fire Resistance "},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:water_breathing\\""},"text":"⬛ Water Breathing"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:invisibility\\""},"text":"⬛ Invisibility"},{"text":"\\n"},{"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:blindness\\""},"text":"⬛ Blindness"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:night_vision\\""},"text":"⬛ Night Vision"},{"text":"\\n"},{"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:hunger\\""},"text":"⬛ Hunger"},{"color":"dark_red","text":"\\n"},{"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:weakness\\""},"text":"⬛ Weakness"},{"color":"dark_red","text":"\\n"},{"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:poison\\""},"text":"⬛ Poison"},{"color":"dark_red","text":"\\n"},{"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:wither\\""},"text":"⬛ Wither"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:health_boost\\""},"text":"⬛ Health Boost"},{"color":"dark_green","text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:absorption\\""},"text":"⬛ Absorption"}],"text":""}', '{"extra":[{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:saturation\\""},"text":"⬛ Saturation"},{"color":"dark_green","text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:glowing\\""},"text":"⬛ Glowing"},{"text":"\\n"},{"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:levitation\\""},"text":"⬛ Levitation"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:luck\\""},"text":"⬛ Luck"},{"text":"\\n"},{"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:unluck\\""},"text":"⬛ Bad Luck"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:slow_falling\\""},"text":"⬛ Slow Falling"},{"color":"dark_green","text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:conduit_power\\""},"text":"⬛ Conduit Power"},{"color":"dark_green","text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:dolphins_grace\\""},"text":"⬛ Dolphin\'s Grace"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:hero_of_the_village\\""},"text":"⬛ Hero of the Village"},{"text":"\\n"},{"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:Bad Omen\\""},"text":"⬛ Bad Omen"},{"color":"dark_red","text":"\\n"},{"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.id set value \\"minecraft:darkness\\""},"text":"⬛ Darkness"},{"color":"dark_red","text":"\\n"},{"text":"\\n "}],"text":""}', '{"extra":[{"color":"dark_green","text":"⬛ Duration ⬛"},{"text":"\\n\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.duration set value 200"},"text":"⬛ 10\\""},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.duration set value 400"},"text":"⬛ 20\\""},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.duration set value 600"},"text":"⬛ 30\\""},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.duration set value 1200"},"text":"⬛ 1\'"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.duration set value 1800"},"text":"⬛ 1\'30\\""},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.duration set value 2400"},"text":"⬛ 2\'"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.duration set value 3600"},"text":"⬛ 3\'"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.duration set value 4800"},"text":"⬛ 4\'"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.duration set value 6000"},"text":"⬛ 5\'"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.duration set value 7200"},"text":"⬛ 6\'"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.duration set value 8400"},"text":"⬛ 7\'"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.duration set value 9600"},"text":"⬛ 8\'"},{"text":"\\n "}],"text":""}', '{"extra":[{"color":"dark_green","text":"⬛ Amplifier⬛"},{"text":"\\n\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.amplifier set value 0"},"text":"⬛ 1"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.amplifier set value 1"},"text":"⬛ 2"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.amplifier set value 2"},"text":"⬛ 3"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.amplifier set value 3"},"text":"⬛ 4"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/data modify storage wicked.potion Temp.amplifier set value 4"},"text":"⬛ 5"},{"text":"\\n\\n"},{"color":"dark_green","text":"⬛ Type of Potion ⬛"},{"text":"\\n\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s P 0"},"text":"⬛ Potion"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s P 2"},"text":"⬛ Splash"},{"text":"\\n"},{"color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s P 1"},"text":"⬛ Lingering"},{"text":"\\n "}],"text":""}', '{"extra":[{"color":"aqua","text":" \\n\\n  "},{"color":"aqua","clickEvent":{"action":"run_command","value":"/function wicked:potion_book/storage with storage wicked.potion Temp"},"text":"⬛   Next  ⬛"},{"text":"\\n"},{"color":"green","text":"  "},{"color":"green","clickEvent":{"action":"run_command","value":"/function wicked:potion_book/lance_crea"},"text":"⬛   Craft ⬛"},{"text":"\\n"},{"color":"red","clickEvent":{"action":"run_command","value":"/function wicked:potion_book/undo"},"text":"  ⬛  Undo ⬛"}],"text":""}'], title: "§2Book of Potions", author: "Antogone", resolved: 1b, book_potion: 1b}