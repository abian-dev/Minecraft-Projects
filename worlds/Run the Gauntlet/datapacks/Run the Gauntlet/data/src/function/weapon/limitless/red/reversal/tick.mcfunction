## Executed at red every tick
# phases
execute unless score @s generic.math matches ..0 run scoreboard players remove @s generic.math 1
execute unless score @s generic.math matches ..1 run function src:weapon/limitless/red/reversal/stationary
execute if score @s generic.math matches 1 rotated as @p[tag=limitless.red.user] run tp @s ~ ~ ~ ~ ~
execute if score @s generic.math matches ..0 run function src:weapon/limitless/red/reversal/move