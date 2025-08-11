## Uses unlimited void
tag @s add limitless.void.user
execute rotated ~ 0 positioned ^ ^1 ^7 run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["limitless.void"],Duration:100}

# fx
execute rotated ~ 0 positioned ^ ^1 ^-3 run function src:generic/vfx/domain/play {"accuracy":"250","radius":"1000","speed":"5","particle":"block_marker{block_state:{Name:black_concrete}}"}
execute rotated ~ 0 positioned ^ ^1 ^-3 run particle block_marker{block_state:{Name:black_concrete}} ~ ~ ~ 0 0 0 0 1 force
playsound block.bell.use neutral @a[distance=..20] ~ ~ ~ 2 2 1
playsound block.bell.resonate neutral @a[distance=..20] ~ ~ ~ 2 1 1

# reset
scoreboard players set @s weapon.cd2 150
scoreboard players remove @s cost.energy 70
scoreboard players reset @s in.sequence