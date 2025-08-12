## At hit entity
scoreboard players add @s effect.burning.duration 2
scoreboard players set @s effect.stun.duration 3
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["supershotgun.meathook","supershotgun.meathook.new"],Duration:30}