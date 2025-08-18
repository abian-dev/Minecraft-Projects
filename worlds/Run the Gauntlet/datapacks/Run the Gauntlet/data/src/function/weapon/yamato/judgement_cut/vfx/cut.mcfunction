## Random Slash at Arbitrary Position on Sphere
# measure closeness to point
scoreboard players operation @s generic.x = %vfxJudgementCut.px generic.x
scoreboard players operation @s generic.y = %vfxJudgementCut.py generic.y
scoreboard players operation @s generic.x -= %vfxJudgementCut.x generic.x
scoreboard players operation @s generic.y -= %vfxJudgementCut.y generic.y

# rotate toward point
execute unless entity @s[scores={generic.x=-200..200}] run scoreboard players operation %vfxJudgementCut.x generic.x += %vfxJudgementCut.vx generic.x
execute unless entity @s[scores={generic.y=-90..90}] run scoreboard players operation %vfxJudgementCut.y generic.y += %vfxJudgementCut.vy generic.y
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get %vfxJudgementCut.x generic.x
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get %vfxJudgementCut.y generic.y

# particles
execute at @s run particle dust{color:[1.0,1.0,1.0],scale:0.6} ^ ^ ^3.00 0 0 0 0 1 force
execute at @s run particle dust{color:[0.0,0.0,0.0],scale:0.6} ^ ^ ^2.75 0 0 0 0 1 force
execute at @s run particle dust{color:[0.0,0.5,1.0],scale:0.6} ^ ^ ^2.50 0 0 0 0 1 force
execute at @s run particle dust{color:[0.0,0.0,0.0],scale:0.6} ^ ^ ^-2.00 0 0 0 0 1 force

# recurse until pos is close to point
scoreboard players reset @s generic.z
scoreboard players operation @s generic.z += @s generic.x
scoreboard players operation @s generic.z += @s generic.y
execute if entity @s[scores={generic.z=-290..290}] run function src:weapon/yamato/judgement_cut/vfx/end
execute unless entity @s[scores={generic.z=-290..290}] at @s run function src:weapon/yamato/judgement_cut/vfx/cut