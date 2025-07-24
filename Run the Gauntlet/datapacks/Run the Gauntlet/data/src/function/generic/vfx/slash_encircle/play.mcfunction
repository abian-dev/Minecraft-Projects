# note: a full sphere is 180 by 90, but adding 20 helps account for potential gaps
# example call: function src:generic/vfx/slash_encircle/play {"numSlashes":"0","slashMin":"0","inaccuracy":"1","yaw":"200","pitch":"110","vfx":"function"}
## Plays Encircling Slash
# initialize
# function src:generic/vfx/slash_encircle/end_all
$scoreboard players set %vfxSlashEncircle.inaccuracy generic.constant $(inaccuracy)
$scoreboard players set %vfxSlashEncircle.yaw generic.constant $(yaw)
$scoreboard players set %vfxSlashEncircle.pitch generic.constant $(pitch)
$scoreboard players set %vfxSlashEncircle.restr generic.constant $(slashMin)
$scoreboard players set %vfxSlashEncircle.itt generic.z $(numSlashes)
scoreboard players set %vfxSlashEncircle.-1 generic.constant -1
scoreboard players set %vfxSlashEncircle.100 generic.constant 100

# calculate rotation max range
scoreboard players operation %vfxSlashEncircle.rotMaxRange generic.constant += %vfxSlashEncircle.yaw generic.constant
scoreboard players operation %vfxSlashEncircle.rotMaxRange generic.constant += %vfxSlashEncircle.pitch generic.constant
scoreboard players operation %vfxSlashEncircle.rotMaxRange generic.constant += %vfxSlashEncircle.rotMaxRange generic.constant

# store
execute store result storage minecraft:vfx slashEncircle.yaw int 1 run scoreboard players get %vfxSlashEncircle.yaw generic.constant
execute store result storage minecraft:vfx slashEncircle.pitch int 1 run scoreboard players get %vfxSlashEncircle.pitch generic.constant
execute store result storage minecraft:vfx slashEncircle.rotMaxRange int 1 run scoreboard players get %vfxSlashEncircle.rotMaxRange generic.constant
$data modify storage minecraft:vfx slashEncircle.vfx set value "$(vfx)"

# get facing position
execute store result score %vfxSlashEncircle.fx generic.x run data get entity @s Rotation[0] 1
execute store result score %vfxSlashEncircle.fy generic.y run data get entity @s Rotation[1] 1

# summon
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["vfx","vfxSlashEncircle"],Duration:0}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashEncircle] ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashEncircle] at @s run function src:generic/vfx/slash_encircle/run