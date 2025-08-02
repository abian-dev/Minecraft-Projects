## Executed at blistering blade every tick
function src:weapon/mirage_edge/blistering/vfx_blistering

# phases
execute unless score @s generic.math matches ..0 run scoreboard players remove @s generic.math 1
execute unless score @s generic.math matches ..0 run function src:weapon/mirage_edge/blistering/stationary
execute if score @s generic.math matches ..0 run function src:weapon/mirage_edge/blistering/move