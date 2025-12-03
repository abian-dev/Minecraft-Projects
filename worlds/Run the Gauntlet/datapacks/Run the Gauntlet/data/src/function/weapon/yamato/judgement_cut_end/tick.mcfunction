## Executed at jce every tick
execute unless score @s generic.math matches 75.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 1 run scoreboard players set @e[type=!#src:non_entity,distance=..15,tag=!yamato.jce.user,team=!ally] effect.stun.duration 7

# afterimages
execute if score @s generic.math matches 10 run function src:generic/functions/random_pos/start {"itt":"2","yaw":"180","pitch":"45","distMin":"20","distMax":"30","atPos":"function src:weapon/yamato/judgement_cut_end/image/summon"}
execute if score @s generic.math matches 15 run function src:generic/functions/random_pos/start {"itt":"2","yaw":"180","pitch":"45","distMin":"20","distMax":"30","atPos":"function src:weapon/yamato/judgement_cut_end/image/summon"}
execute if score @s generic.math matches 20 run function src:generic/functions/random_pos/start {"itt":"2","yaw":"180","pitch":"45","distMin":"20","distMax":"30","atPos":"function src:weapon/yamato/judgement_cut_end/image/summon"}

# slashes
execute if score @s generic.math matches 6 run function src:generic/vfx/slash_encircle/play {"numSlashes":"10","slashMin":"0","inaccuracy":"3","yaw":"200","pitch":"110","vfx":"particle dust{color:[0.0,0.8,1.0],scale:0.7} ^ ^ ^8 0 0 0 0 1 force"}
execute if score @s generic.math matches 8 run function src:generic/vfx/slash_encircle/play {"numSlashes":"10","slashMin":"0","inaccuracy":"3","yaw":"200","pitch":"110","vfx":"particle dust{color:[0.0,0.8,1.0],scale:0.7} ^ ^ ^10 0 0 0 0 1 force"}
execute if score @s generic.math matches 10 run function src:generic/vfx/slash_scatter/play {"inaccuracy":"0.2","slashLength":"80","slashScatter":"80","slashNum":"10","vfx":"particle dust{color:[0.0,0.8,1.0],scale:0.7} ~ ~ ~ 0 0 0 0 1 force"}
execute if score @s generic.math matches 12 run function src:generic/vfx/slash_scatter/play {"inaccuracy":"0.2","slashLength":"80","slashScatter":"80","slashNum":"10","vfx":"particle dust{color:[0.0,0.8,1.0],scale:0.7} ~ ~ ~ 0 0 0 0 1 force"}
execute if score @s generic.math matches 15 run function src:generic/vfx/slash_scatter/play {"inaccuracy":"0.2","slashLength":"80","slashScatter":"80","slashNum":"10","vfx":"particle end_rod ~ ~ ~ 0 0 0 0 1 force"}
execute if score @s generic.math matches 20 run function src:generic/vfx/slash_scatter/play {"inaccuracy":"0.2","slashLength":"80","slashScatter":"80","slashNum":"10","vfx":"particle end_rod ~ ~ ~ 0 0 0 0 1 force"}
execute if score @s generic.math matches 25 run function src:generic/vfx/slash_scatter/play {"inaccuracy":"0.2","slashLength":"80","slashScatter":"80","slashNum":"10","vfx":"particle end_rod ~ ~ ~ 0 0 0 0 1 force"}
execute if score @s generic.math matches 65 run function src:weapon/yamato/judgement_cut_end/end

# sfx
execute if score @s generic.math matches 6..12 run function src:weapon/yamato/judgement_cut_end/slash_sfx
execute if score @s generic.math matches 15 run function src:weapon/yamato/judgement_cut_end/slash_sfx
execute if score @s generic.math matches 20 run function src:weapon/yamato/judgement_cut_end/slash_sfx
execute if score @s generic.math matches 25 run function src:weapon/yamato/judgement_cut_end/slash_sfx