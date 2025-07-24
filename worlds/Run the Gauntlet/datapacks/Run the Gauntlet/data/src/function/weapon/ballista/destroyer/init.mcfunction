## Initialize summoned blade
scoreboard players set @s generic.raycast.dist 20
execute rotated as @p[tag=ballista.destroyer.user] run tp @s ~ ~1.5 ~ ~ ~

# charge power
execute if score @p[tag=ballista.destroyer.user] in.rmb.holdTime matches 45.. run return run tag @s add ballista.destroyer.high
execute if score @p[tag=ballista.destroyer.user] in.rmb.holdTime matches 30.. run return run tag @s add ballista.destroyer.mid
execute if score @p[tag=ballista.destroyer.user] in.rmb.holdTime matches 15.. run return run tag @s add ballista.destroyer.low