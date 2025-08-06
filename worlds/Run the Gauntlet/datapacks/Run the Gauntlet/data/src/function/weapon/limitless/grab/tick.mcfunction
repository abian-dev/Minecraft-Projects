## Executed at grab end marker every tick
# automatic despawn duration
execute unless score @s generic.math matches 20.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 20.. run function src:weapon/limitless/grab/end

# execute at user
tag @s add limitless.grab.curr
execute as @a[tag=limitless.grab.user] at @s if score @s user.id = @e[type=area_effect_cloud,limit=1,sort=nearest,tag=limitless.grab.curr] user.id run function src:weapon/limitless/grab/tick_player
execute if entity @p[distance=..3,tag=limitless.grab.user] run function src:weapon/limitless/grab/end
tag @s remove limitless.grab.curr