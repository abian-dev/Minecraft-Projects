## Uses soul steal
tag @s add miracles.soul.user
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["miracles.soul"],Duration:90}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=miracles.soul] at @s run function src:weapon/miracles/soul/init
playsound ui.cartography_table.take_result neutral @a[distance=..20] ~ ~ ~ 2 1 1

# reset
scoreboard players set @s weapon.cd2 100
scoreboard players remove @s cost.energy 30
scoreboard players reset @s in.sequence