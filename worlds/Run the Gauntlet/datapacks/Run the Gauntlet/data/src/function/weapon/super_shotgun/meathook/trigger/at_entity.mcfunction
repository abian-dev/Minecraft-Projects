## At hit entity
scoreboard players set @s effect.burning.duration 2
scoreboard players set @s effect.stun.duration 2
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["projectile","supershotgun.meathook"],Duration:20}