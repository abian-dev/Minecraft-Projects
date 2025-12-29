## Resets everything in labyrinth
# message
tellraw @a ["",{"text":"Restarting labyrinth...","color":"red"}]

# remove teams
team remove LabyrinthMobs

# remove storages
data remove storage labyrinth spawner

# remove scoreboards
scoreboard objectives remove labyrinth.constant
scoreboard objectives remove labyrinth.math
scoreboard objectives remove labyrinth.count
scoreboard objectives remove labyrinth.vec.x
scoreboard objectives remove labyrinth.vec.y
scoreboard objectives remove labyrinth.vec.z
scoreboard objectives remove labyrinth.vec.dx
scoreboard objectives remove labyrinth.vec.dy
scoreboard objectives remove labyrinth.vec.dz
scoreboard objectives remove labyrinth.cd
scoreboard objectives remove labyrinth.cdMax
scoreboard objectives remove labyrinth.entity
scoreboard objectives remove labyrinth.entityMax
scoreboard objectives remove labyrinth.spawner.id
scoreboard objectives remove labyrinth.dy
scoreboard objectives remove labyrinth.health
scoreboard objectives remove labyrinth.music

# remove generic
function labyrinth:generic/restart
