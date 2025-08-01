## Executed at dash end marker every tick
# automatic despawn duration
execute unless score @s generic.math matches 20.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 20.. run function src:weapon/yamato/judgement_cut_end/dash/end

# pulls user to itself
tag @s add yamato.jce.dash.curr
execute as @a[tag=yamato.jce.user] at @s if score @s user.id = @e[type=area_effect_cloud,limit=1,sort=nearest,tag=yamato.jce.dash.curr] user.id facing entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=yamato.jce.dash.curr] feet run function src:weapon/yamato/judgement_cut_end/dash/run
execute if entity @p[distance=..3,tag=yamato.jce.user] run function src:weapon/yamato/judgement_cut_end/dash/end
tag @s remove yamato.jce.dash.curr