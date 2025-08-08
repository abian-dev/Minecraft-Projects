## Called every tick
# assign tasks
execute as @a at @s run function src:assign_tasks/to_players
execute as @e[type=area_effect_cloud] at @s run function src:assign_tasks/to_aecs
execute as @e[type=armor_stand] at @s run function src:assign_tasks/to_stands
execute as @e[type=chest_minecart] at @s run function src:assign_tasks/to_carts
execute as @e[type=item_display] at @s run function src:assign_tasks/to_itemdisplays

# assign scheduled tasks to entities
schedule function src:assign_tasks/schedule/to_entities 10t append
schedule function src:assign_tasks/schedule/to_spawners 1s append

# gauntlet game
execute if score %gauntlet.gameStarted system.global matches 0 run function src:system/games/gauntlet/queue/waiting
execute if score %gauntlet.gameStarted system.global matches 1 run schedule function src:system/games/gauntlet/ingame/main 5t append

# pvp game
execute if score %pvp.gameStarted system.global matches 0 run function src:system/games/pvp/queue/waiting
execute if score %pvp.gameStarted system.global matches 1 run function src:system/games/pvp/ingame/main