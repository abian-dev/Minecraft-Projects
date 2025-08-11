## Uses judgement cut end
tag @s add yamato.jce.user
function src:weapon/yamato/judgement_cut_end/dash/range/start
function src:weapon/yamato/judgement_cut_end/origin_range/start

# fx
particle flash ^ ^1 ^1 0 0 0 0 1 force
playsound block.end_portal.spawn neutral @a[distance=..20] ~ ~ ~ 0.5 2 0.5

# reset
scoreboard players set @s weapon.cd2 100
scoreboard players remove @s cost.stamina 40
scoreboard players reset @s ability.uses