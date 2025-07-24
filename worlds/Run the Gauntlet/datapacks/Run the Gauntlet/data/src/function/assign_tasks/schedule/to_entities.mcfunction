## Schedule cycle for "assign tasks to entities"
execute as @e[type=!#src:non_entity] at @s run function src:assign_tasks/to_entities

# low frequency checks
schedule clear src:assign_tasks/schedule/to_entities