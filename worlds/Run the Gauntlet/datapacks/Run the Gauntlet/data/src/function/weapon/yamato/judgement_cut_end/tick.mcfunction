## Executed at jce every tick
execute unless score @s generic.math matches 75.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 1 run scoreboard players set @e[type=!#src:non_entity,distance=..15,tag=!yamato.jce.user,team=!ally] effect.stun.duration 7

# slashes
execute if score @s generic.math matches 6..8 run function src:generic/vfx/slash_encircle/play {"numSlashes":"3","slashMin":"0","inaccuracy":"2","yaw":"200","pitch":"90","vfx":"particle dust{color:[0.0,0.5,1.0],scale:0.7} ^ ^ ^8 0 0 0 0 1 force"}
execute if score @s generic.math matches 6..8 run function src:generic/vfx/slash_encircle/play {"numSlashes":"3","slashMin":"0","inaccuracy":"2","yaw":"200","pitch":"90","vfx":"particle dust{color:[0.0,0.5,1.0],scale:0.7} ^ ^ ^10 0 0 0 0 1 force"}
execute if score @s generic.math matches 10..12 run function src:generic/vfx/slash_scatter/play {"inaccuracy":"0.2","slashLength":"50","slashScatter":"80","slashNum":"10","vfx":"particle dust{color:[0.0,0.5,1.0],scale:0.7} ~ ~ ~ 0 0 0 0 1 force"}
execute if score @s generic.math matches 15..35 run function src:generic/vfx/slash_scatter/play {"inaccuracy":"0.1","slashLength":"100","slashScatter":"120","slashNum":"6","vfx":"particle electric_spark ~ ~ ~ 0 0 0 0 1 force"}
execute if score @s generic.math matches 65 run function src:weapon/yamato/judgement_cut_end/end

# sfx
execute if score @s generic.math matches 6..12 run function src:weapon/yamato/judgement_cut_end/slash_sfx
execute if score @s generic.math matches 15..35 run function src:weapon/yamato/judgement_cut_end/slash_sfx