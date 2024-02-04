# Initialize steps
scoreboard players set @s steps 128

# Move the ray
execute at @s run function wicked:wicked_ray/move

# # Check if the ray hit 
# execute as @s[tag=hit] at @s run function wicked:wicked_ray/hit

kill @s
