## Schedule cycle for "assign tasks to spawners"
execute as @e[type=marker,tag=spawning.spawner] at @s run function src:spawning/spawner/main

# low frequency checks
schedule clear src:assign_tasks/schedule/to_spawners