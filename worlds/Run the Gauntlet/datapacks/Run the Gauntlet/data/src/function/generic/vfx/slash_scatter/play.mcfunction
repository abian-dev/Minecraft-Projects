# example call: function src:generic/vfx/slash_scatter/play {"inaccuracy":"0.5","slashLength":"10","slashScatter":"10","slashNum":"10","vfx":"function"}
## Plays Scatter Slash
# summon
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["vfx","vfxSlashScatter"],Duration:0}
$execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashScatter] at @s run function src:generic/vfx/slash_scatter/init {"slashNum":"$(slashNum)"}
$execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashScatter] at @s run function src:generic/vfx/slash_scatter/run {"inaccuracy":"$(inaccuracy)","slashLength":"$(slashLength)","slashScatter":"$(slashScatter)","vfx":"$(vfx)"}