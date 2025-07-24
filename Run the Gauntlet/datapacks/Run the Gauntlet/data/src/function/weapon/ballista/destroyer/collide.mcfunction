## When destroyer blade collides
# vfx
particle flash ^-5.0 ^ ^ 0 0 0 0 1 force
particle flash ^-2.5 ^ ^ 0 0 0 0 1 force
particle flash ^0.0 ^ ^ 0 0 0 0 1 force
particle flash ^2.5 ^ ^ 0 0 0 0 1 force
particle flash ^5.0 ^ ^ 0 0 0 0 1 force

# reset
tag @s add ballista.destroyer.curr
execute unless entity @e[type=area_effect_cloud,tag=!ballista.destroyer.curr,tag=ballista.destroyer] run tag @a[tag=ballista.destroyer.user] remove ballista.destroyer.user
kill @s