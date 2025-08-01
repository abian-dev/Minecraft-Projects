## Executed at stinger end marker every tick
# automatic despawn duration
execute unless score @s generic.math matches 20.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 20.. run function src:weapon/mirage_edge/stinger/end

# execute at user
tag @s add mirageedge.stinger.curr
execute as @a[tag=mirageedge.stinger.user] at @s if score @s user.id = @e[type=area_effect_cloud,limit=1,sort=nearest,tag=mirageedge.stinger.curr] user.id run function src:weapon/mirage_edge/stinger/tick_player
execute if entity @p[distance=..3,tag=mirageedge.stinger.user] run function src:weapon/mirage_edge/stinger/end
tag @s remove mirageedge.stinger.curr