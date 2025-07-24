## Summons bullet
# summon
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["projectile","supershotgun.bullet"],Duration:20}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=supershotgun.bullet] at @s run function src:weapon/super_shotgun/primary/init

# recursion for num bullets
scoreboard players add %supershotgun.pf.itt generic.math 1
execute unless score %supershotgun.pf.itt generic.math matches 20.. run function src:weapon/super_shotgun/primary/summon
execute if score %supershotgun.pf.itt generic.math matches 20.. run scoreboard players reset %supershotgun.pf.itt