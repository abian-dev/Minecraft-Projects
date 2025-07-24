# note: called in tick
## Executed at spawner every schedule
# count spawned entities
scoreboard players set @s spawning.entity 0
tag @s add spawning.currentSpawner
execute as @e[type=!#src:non_entity,team=enemy] if score @s spawning.spawner.id = @e[type=marker,limit=1,sort=nearest,tag=spawning.currentSpawner] spawning.spawner.id run scoreboard players add @e[type=marker,limit=1,sort=nearest,tag=spawning.currentSpawner] spawning.entity 1
tag @s[tag=spawning.currentSpawner] remove spawning.currentSpawner

# spawn delay
execute unless score @s spawning.entity >= @s spawning.entityMax unless score @s spawning.cd >= @s spawning.cdMax run scoreboard players add @s spawning.cd 1
execute if score @s spawning.entity >= @s spawning.entityMax if score @s spawning.cd matches 1.. run scoreboard players set @s spawning.cd 0

# activate spawner if conditions are met
execute store result storage spawning spawner.curr.id int 1 run scoreboard players get @s spawning.spawner.id
execute if score @s spawning.entity < @s spawning.entityMax if score @s spawning.cd >= @s spawning.cdMax run function src:spawning/spawner/activate with storage spawning spawner.curr