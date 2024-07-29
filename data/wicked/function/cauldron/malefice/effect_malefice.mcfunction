effect give @s wither 10 4 true
effect give @s darkness 15 9 true
effect give @s mining_fatigue 60 9 true
effect give @s bad_omen infinite 1 true
effect give @s hunger 15 9 true
effect give @s nausea 15 9 true
effect give @s slowness 60 2 true
effect give @s unluck 900 4 true


execute as @s at @s run particle witch ^ ^ ^ 0.3 1 0.3 50 3 force
damage @s 2 minecraft:generic_kill by @p[tag=wicked]
damage @s 1 minecraft:magic by @p[tag=wicked]
