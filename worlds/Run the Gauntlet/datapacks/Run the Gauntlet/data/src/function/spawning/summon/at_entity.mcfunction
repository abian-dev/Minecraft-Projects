## Executes at spawned entity
# merge specific data
$function src:enemy/id/$(id)
data merge entity @s {drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,body:0.000,mainhand:0.000,offhand:0.000,saddle:0.000}}

# join team
team join enemy

# tracking
tag @s add spawning.newEntity
data merge entity @s {attributes:[{id:"minecraft:follow_range",base:200}]}
schedule function src:spawning/summon/track_schedule 2t replace

# vfx
execute rotated ~ 0 positioned ~ ~ ~0.0625 run function src:spawning/summon/pentagram