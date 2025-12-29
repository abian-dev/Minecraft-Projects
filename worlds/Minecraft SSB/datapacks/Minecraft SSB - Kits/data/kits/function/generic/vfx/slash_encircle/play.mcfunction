# note: a full sphere is 180 by 90, but adding 20 helps account for potential gaps
# example call: function kits:generic/vfx/slash_encircle/play {"numSlashes":"0","slashMin":"0","inaccuracy":"1","yaw":"200","pitch":"110","vfx":"function"}
## Plays Encircling Slash
# initialize
# function kits:generic/vfx/slash_encircle/end_all
$scoreboard players set %vfxSlashEncircle.inaccuracy kits.generic.constant $(inaccuracy)
$scoreboard players set %vfxSlashEncircle.yaw kits.generic.constant $(yaw)
$scoreboard players set %vfxSlashEncircle.pitch kits.generic.constant $(pitch)
$scoreboard players set %vfxSlashEncircle.restr kits.generic.constant $(slashMin)
$scoreboard players set %vfxSlashEncircle.itt kits.generic.z $(numSlashes)
scoreboard players set %vfxSlashEncircle.-1 kits.generic.constant -1
scoreboard players set %vfxSlashEncircle.100 kits.generic.constant 100

# calculate rotation max range
scoreboard players operation %vfxSlashEncircle.rotMaxRange kits.generic.constant += %vfxSlashEncircle.yaw kits.generic.constant
scoreboard players operation %vfxSlashEncircle.rotMaxRange kits.generic.constant += %vfxSlashEncircle.pitch kits.generic.constant
scoreboard players operation %vfxSlashEncircle.rotMaxRange kits.generic.constant += %vfxSlashEncircle.rotMaxRange kits.generic.constant

# store
execute store result storage minecraft:kits.vfx slashEncircle.yaw int 1 run scoreboard players get %vfxSlashEncircle.yaw kits.generic.constant
execute store result storage minecraft:kits.vfx slashEncircle.pitch int 1 run scoreboard players get %vfxSlashEncircle.pitch kits.generic.constant
execute store result storage minecraft:kits.vfx slashEncircle.rotMaxRange int 1 run scoreboard players get %vfxSlashEncircle.rotMaxRange kits.generic.constant
$data modify storage minecraft:kits.vfx slashEncircle.vfx set value "$(vfx)"

# get facing position
execute store result score %vfxSlashEncircle.fx kits.generic.x run data get entity @s Rotation[0] 1
execute store result score %vfxSlashEncircle.fy kits.generic.y run data get entity @s Rotation[1] 1

# summon
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["kits.vfx","vfxSlashEncircle"],Duration:0}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashEncircle] ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashEncircle] at @s run function kits:generic/vfx/slash_encircle/run