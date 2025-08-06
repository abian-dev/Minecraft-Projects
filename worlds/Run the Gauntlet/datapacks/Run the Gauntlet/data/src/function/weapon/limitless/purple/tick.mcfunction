## Executed at purple every tick
# phases
execute unless score @s generic.math matches ..0 run scoreboard players remove @s generic.math 1
execute unless score @s generic.math matches ..0 run function src:weapon/limitless/purple/stationary
execute if score @s generic.math matches ..0 run function src:weapon/limitless/purple/move