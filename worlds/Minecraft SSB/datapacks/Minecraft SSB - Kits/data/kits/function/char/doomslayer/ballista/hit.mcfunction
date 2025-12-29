## Particles
particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 3
function kits:generic/vfx/expanding_sphere/variant1/play {"accuracy":"300","speed":"50","limit":"5","particle":"dust{color:[1.000,0.270,0.020],scale:0.5}"}
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["VFX","VFX_DoomslayerBallistaExplosion"],Duration:5}

## Damage
execute as @e[distance=..4,type=!#kits:non_entity,tag=!Doomslayer,tag=!Invincible,tag=!InLabyrinth] at @s run function kits:char/doomslayer/ballista/damage