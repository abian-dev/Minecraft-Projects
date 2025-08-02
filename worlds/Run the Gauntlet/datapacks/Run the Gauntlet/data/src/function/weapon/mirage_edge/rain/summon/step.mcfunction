## Raycast step function
# collision check
execute if score @s generic.raycast.step2 matches 0 run return run function src:generic/functions/random_pos/start {"itt":"15","yaw":"180","pitch":"45","distMin":"0","distMax":"10","atPos":"function src:weapon/mirage_edge/rain/summon/blade"}
execute unless block ~ ~2 ~ #src:passable run scoreboard players set @s generic.raycast.step2 -1
execute if score @s generic.raycast.step2 matches -1 run return run function src:generic/functions/random_pos/start {"itt":"15","yaw":"180","pitch":"45","distMin":"0","distMax":"10","atPos":"function src:weapon/mirage_edge/rain/summon/blade"}

# recursive call
scoreboard players remove @s generic.raycast.step2 1
execute if score @s generic.raycast.step2 matches 0.. positioned ~ ~0.5 ~ run function src:weapon/mirage_edge/rain/summon/step