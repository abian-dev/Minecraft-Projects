## Executed at rapid slash end marker every tick
# automatic despawn duration
execute unless score @s generic.math matches 20.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 20.. run function src:weapon/yamato/rapid_slash/end

# execute at user
tag @s add yamato.rapidslash.curr
execute as @a[tag=yamato.rapid.user] at @s if score @s user.id = @e[type=area_effect_cloud,limit=1,sort=nearest,tag=yamato.rapidslash.curr] user.id run function src:weapon/yamato/rapid_slash/tick_player
execute if entity @p[distance=..3,tag=yamato.rapid.user] run function src:weapon/yamato/rapid_slash/end
tag @s remove yamato.rapidslash.curr