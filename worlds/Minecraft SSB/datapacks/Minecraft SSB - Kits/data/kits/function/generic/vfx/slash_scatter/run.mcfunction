## Runs Scatter Slash
# reset pos
execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s kits.generic.x
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s kits.generic.y
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s kits.generic.z

# random pos
$execute store result score %vfxSlashScatter.dist kits.generic.z run random value 0..$(slashScatter)
$execute at @s run function kits:generic/vfx/slash_scatter/pos {"inaccuracy":"$(inaccuracy)"}

# random dir
execute store result entity @s Rotation[0] float 1 run random value -180..180
execute store result entity @s Rotation[1] float 1 run random value -90..90

# slash
$scoreboard players set @s kits.generic.raycast.step $(slashLength)
$execute at @s run function kits:generic/vfx/slash_scatter/slash_fwd {"inaccuracy":"$(inaccuracy)","vfx":"$(vfx)"}
$scoreboard players set @s kits.generic.raycast.step $(slashLength)
$execute at @s run function kits:generic/vfx/slash_scatter/slash_bwd {"inaccuracy":"$(inaccuracy)","vfx":"$(vfx)"}

# recursive call
scoreboard players remove @s kits.generic.dz 1
$execute if score @s kits.generic.dz matches 0.. run function kits:generic/vfx/slash_scatter/run {"inaccuracy":"$(inaccuracy)","slashLength":"$(slashLength)","slashScatter":"$(slashScatter)","vfx":"$(vfx)"}
execute if score @s kits.generic.dz matches ..-1 run function kits:generic/vfx/slash_scatter/end