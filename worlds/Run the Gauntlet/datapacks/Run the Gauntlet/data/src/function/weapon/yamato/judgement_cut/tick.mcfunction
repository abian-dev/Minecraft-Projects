## Executed at judgement cut every tick
# vfx
function src:weapon/yamato/judgement_cut/vfx/run

# damage
execute as @e[type=!#src:non_entity,distance=..3,tag=!yamato.judgementcut.user,team=!ally] at @s run function src:weapon/yamato/judgement_cut/hit

# automatic despawn duration
execute unless score @s generic.math matches 15.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 15.. run function src:weapon/yamato/judgement_cut/end