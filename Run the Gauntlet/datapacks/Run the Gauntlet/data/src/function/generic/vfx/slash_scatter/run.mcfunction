## Runs Scatter Slash
# reset pos
execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s generic.x
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s generic.y
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s generic.z

# random pos
$execute store result score %vfxSlashScatter.dist generic.z run random value 0..$(slashScatter)
$execute at @s run function src:generic/vfx/slash_scatter/pos {"inaccuracy":"$(inaccuracy)"}

# random dir
execute store result entity @s Rotation[0] float 1 run random value -180..180
execute store result entity @s Rotation[1] float 1 run random value -90..90

# slash
$scoreboard players set @s generic.raycast.step $(slashLength)
$execute at @s run function src:generic/vfx/slash_scatter/slash_fwd {"inaccuracy":"$(inaccuracy)","vfx":"$(vfx)"}
$scoreboard players set @s generic.raycast.step $(slashLength)
$execute at @s run function src:generic/vfx/slash_scatter/slash_bwd {"inaccuracy":"$(inaccuracy)","vfx":"$(vfx)"}

# recursive call
scoreboard players remove @s generic.dz 1
$execute if score @s generic.dz matches 0.. run function src:generic/vfx/slash_scatter/run {"inaccuracy":"$(inaccuracy)","slashLength":"$(slashLength)","slashScatter":"$(slashScatter)","vfx":"$(vfx)"}
execute if score @s generic.dz matches ..-1 run function src:generic/vfx/slash_scatter/end