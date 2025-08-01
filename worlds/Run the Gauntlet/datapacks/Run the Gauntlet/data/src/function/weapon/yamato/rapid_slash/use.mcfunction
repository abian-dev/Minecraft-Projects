## Uses rapid slash
tag @s add yamato.rapid.user
attribute @s gravity modifier add gravity.yamato.rapidslash -1 add_multiplied_total
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["yamato.rapidslash.vfx"],Duration:10}
function src:weapon/yamato/rapid_slash/range/start

# reset
scoreboard players set @s weapon.cd 20
scoreboard players reset @s ability.uses