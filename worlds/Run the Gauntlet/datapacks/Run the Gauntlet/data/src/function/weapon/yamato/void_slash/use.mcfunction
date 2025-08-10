## Uses void slash
tag @s add yamato.void.user
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["yamato.voidslash"],Duration:20}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=yamato.voidslash] @s
scoreboard players set @s effect.stun.duration 2
function src:assign_tasks/schedule/to_entities

# fx
particle flash ^ ^1 ^1 0 0 0 0 1 force
playsound block.beacon.deactivate neutral @a[distance=..20] ~ ~ ~ 1 1 1

# reset
scoreboard players set @s weapon.cd 20
scoreboard players reset @s ability.uses