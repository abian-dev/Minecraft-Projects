## Executed at roll end marker every tick
# automatic despawn duration
execute unless score @s generic.math matches 20.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 20.. run function src:armor/clothes/roll/end

# execute at user
tag @s add clothes.roll.curr
execute as @a[tag=clothes.roll.user] at @s if score @s user.id = @e[type=area_effect_cloud,limit=1,sort=nearest,tag=clothes.roll.curr] user.id run function src:armor/clothes/roll/tick_player
execute if entity @p[distance=..3,tag=clothes.roll.user] run function src:armor/clothes/roll/end
tag @s remove clothes.roll.curr