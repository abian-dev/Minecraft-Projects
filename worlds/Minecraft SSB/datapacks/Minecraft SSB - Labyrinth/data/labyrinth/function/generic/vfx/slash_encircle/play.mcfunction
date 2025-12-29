# note: a full sphere is 180 by 90, but adding 20 helps account for potential gaps
# example call: function labyrinth:generic/vfx/slash_encircle/play {"numSlashes":"0","slashMin":"0","inaccuracy":"1","yaw":"200","pitch":"110","vfx":"function"}
## Plays Encircling Slash
# initialize
# function labyrinth:generic/vfx/slash_encircle/end_all
$scoreboard players set %vfxSlashEncircle.inaccuracy labyrinth.generic.constant $(inaccuracy)
$scoreboard players set %vfxSlashEncircle.yaw labyrinth.generic.constant $(yaw)
$scoreboard players set %vfxSlashEncircle.pitch labyrinth.generic.constant $(pitch)
$scoreboard players set %vfxSlashEncircle.restr labyrinth.generic.constant $(slashMin)
$scoreboard players set %vfxSlashEncircle.itt labyrinth.generic.z $(numSlashes)
scoreboard players set %vfxSlashEncircle.-1 labyrinth.generic.constant -1
scoreboard players set %vfxSlashEncircle.100 labyrinth.generic.constant 100

# calculate rotation max range
scoreboard players operation %vfxSlashEncircle.rotMaxRange labyrinth.generic.constant += %vfxSlashEncircle.yaw labyrinth.generic.constant
scoreboard players operation %vfxSlashEncircle.rotMaxRange labyrinth.generic.constant += %vfxSlashEncircle.pitch labyrinth.generic.constant
scoreboard players operation %vfxSlashEncircle.rotMaxRange labyrinth.generic.constant += %vfxSlashEncircle.rotMaxRange labyrinth.generic.constant

# store
execute store result storage minecraft:labyrinth.vfx slashEncircle.yaw int 1 run scoreboard players get %vfxSlashEncircle.yaw labyrinth.generic.constant
execute store result storage minecraft:labyrinth.vfx slashEncircle.pitch int 1 run scoreboard players get %vfxSlashEncircle.pitch labyrinth.generic.constant
execute store result storage minecraft:labyrinth.vfx slashEncircle.rotMaxRange int 1 run scoreboard players get %vfxSlashEncircle.rotMaxRange labyrinth.generic.constant
$data modify storage minecraft:labyrinth.vfx slashEncircle.vfx set value "$(vfx)"

# get facing position
execute store result score %vfxSlashEncircle.fx labyrinth.generic.x run data get entity @s Rotation[0] 1
execute store result score %vfxSlashEncircle.fy labyrinth.generic.y run data get entity @s Rotation[1] 1

# summon
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["labyrinth.vfx","vfxSlashEncircle"],Duration:0}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashEncircle] ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashEncircle] at @s run function labyrinth:generic/vfx/slash_encircle/run