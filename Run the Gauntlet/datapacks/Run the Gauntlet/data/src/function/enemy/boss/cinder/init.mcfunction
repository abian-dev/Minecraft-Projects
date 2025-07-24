## Initialize random delay and move
# delay before next move
execute store result score @s[tag=labyrinth.cinder.phase1] labyrinth.cdMax run random value 10..40
execute store result score @s[tag=labyrinth.cinder.phase2] labyrinth.cdMax run random value 10..30

# transition phase if conditions are met
execute if entity @s[tag=labyrinth.cinder.phase2Trans] run return run scoreboard players set @s labyrinth.math -2

# phase 1: roll move id
execute if entity @s[tag=labyrinth.cinder.phase1] if entity @p[distance=..7] run return run execute store result score @s labyrinth.math run random value 1..5
execute if entity @s[tag=labyrinth.cinder.phase1] unless entity @p[distance=..7] run return run execute store result score @s labyrinth.math run random value 7..12

# phase 2: roll move id
execute if entity @s[tag=labyrinth.cinder.phase2] if entity @p[distance=..7] run return run execute store result score @s labyrinth.math run random value 2..6
execute if entity @s[tag=labyrinth.cinder.phase2] unless entity @p[distance=..7] run return run execute store result score @s labyrinth.math run random value 9..19