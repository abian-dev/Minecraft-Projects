function kits:char/saber/strikeair/particles2
playsound minecraft:entity.breeze.wind_burst neutral @a[distance=..50] ~ ~ ~ 5 0 1
playsound minecraft:entity.breeze.shoot neutral @a[distance=..50] ~ ~ ~ 5 0 1
playsound minecraft:block.trial_spawner.ominous_activate neutral @a[distance=..50] ~ ~ ~ 5 0.75 1
execute if entity @s[tag=!SaberExcalibur] positioned ~ ~1.5 ~ positioned ^ ^ ^1.5 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 0 force

execute at @s if entity @s[tag=!SaberExcalibur] run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:15,Tags:["SaberStrikeAirProjectile","projectile"]}
execute at @s if entity @s[tag=SaberExcalibur] run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:20,Tags:["SaberStrikeAirProjectile","projectile"]}
tp @e[type=area_effect_cloud,tag=SaberStrikeAirProjectile] @s

attribute @s minecraft:attack_speed modifier remove attackspeed.strikeair.saber
function kits:char/saber/mana/consume {mana:20}
effect give @s minecraft:absorption 3 1 true
scoreboard players set @s kits.ability2CD 0
tag @s remove SaberStrikeAirCharge