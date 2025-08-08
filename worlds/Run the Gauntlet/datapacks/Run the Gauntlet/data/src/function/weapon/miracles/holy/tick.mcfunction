## Executed at holy scriptures end marker every tick
# automatic despawn duration
execute unless score @s generic.math matches 20.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 20.. run function src:weapon/miracles/holy/end

# execute at user
tag @s add miracles.holy.curr
execute as @a[tag=miracles.holy.user] at @s if score @s user.id = @e[type=area_effect_cloud,limit=1,sort=nearest,tag=miracles.holy.curr] user.id run function src:weapon/miracles/holy/tick_player
execute if entity @p[distance=..3,tag=miracles.holy.user] run function src:weapon/miracles/holy/end
tag @s remove miracles.holy.curr