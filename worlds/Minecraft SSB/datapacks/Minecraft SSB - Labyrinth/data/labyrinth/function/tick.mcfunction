## Runs each tick
# assign scheduled tasks to entities
schedule function labyrinth:assign_tasks/schedules/to_spawners 1s append

# schedule main logic for zones
schedule function labyrinth:spawning/zones/main 1s append
function labyrinth:spawning/boss/main

# assign
execute as @e[type=piglin_brute] at @s run function labyrinth:assign_tasks/to_enemies
execute as @e[type=area_effect_cloud] at @s run function labyrinth:assign_tasks/to_aecs