## When burst is used
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["rocketlauncher.burst"],Duration:30}
scoreboard players set @s weapon.cd2 40
scoreboard players remove @s cost.ammo.rocket 3