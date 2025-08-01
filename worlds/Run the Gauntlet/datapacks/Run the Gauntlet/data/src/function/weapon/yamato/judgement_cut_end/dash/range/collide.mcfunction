## When range raycast collides
# summon dash end marker
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["yamato.jce.dash"],Duration:20}
scoreboard players operation @e[type=area_effect_cloud,distance=..2,limit=1,sort=nearest,tag=yamato.jce.dash] user.id = @s user.id

# find origin range then stop ray
scoreboard players operation @s generic.raycast.step2 /= %yamato.jce.2 generic.constant
scoreboard players set @s generic.raycast.step 0