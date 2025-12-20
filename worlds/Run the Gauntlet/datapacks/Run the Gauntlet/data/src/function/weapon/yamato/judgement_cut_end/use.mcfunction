## Uses judgement cut end
tag @s add yamato.jce.user
function src:weapon/yamato/judgement_cut_end/dash/range/start
function src:weapon/yamato/judgement_cut_end/origin_range/start
scoreboard players set @s effect.stun.duration 7

# afterimages
execute rotated ~0 0 positioned ^ ^ ^0.1 run function src:weapon/yamato/judgement_cut_end/image/summon
execute rotated ~45 0 positioned ^ ^ ^0.1 run function src:weapon/yamato/judgement_cut_end/image/summon
execute rotated ~-45 0 positioned ^ ^ ^0.1 run function src:weapon/yamato/judgement_cut_end/image/summon
execute rotated ~20 -45 positioned ^ ^ ^0.1 run function src:weapon/yamato/judgement_cut_end/image/summon
execute rotated ~-20 -45 positioned ^ ^ ^0.1 run function src:weapon/yamato/judgement_cut_end/image/summon

# fx
particle flash{color:[1.0,1.0,1.0,1.0]} ^ ^1 ^1 0 0 0 0 2 force
playsound block.end_portal.spawn neutral @a[distance=..20] ~ ~ ~ 0.5 2 0.5

# reset
scoreboard players set @s weapon.cd2 100
scoreboard players remove @s cost.stamina 60
scoreboard players reset @s ability.uses