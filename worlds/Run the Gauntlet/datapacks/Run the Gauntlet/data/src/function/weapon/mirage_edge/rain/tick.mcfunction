## Executed at rain blade every tick
function src:weapon/mirage_edge/rain/vfx_rain

# phases
execute unless score @s generic.math matches ..0 run scoreboard players remove @s generic.math 1
execute if score @s generic.math matches ..10 run tp @s ^ ^ ^1.5
execute if score @s generic.math matches ..0 run function src:weapon/mirage_edge/rain/end

# enemy collision
execute as @e[type=!#src:non_entity,distance=..2,tag=!mirageedge.rain.user,team=!ally] at @s run function src:weapon/mirage_edge/rain/hit