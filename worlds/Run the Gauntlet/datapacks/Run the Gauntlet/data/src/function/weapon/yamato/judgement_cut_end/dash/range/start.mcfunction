## Initiates dash range logic
# mark initial pos
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["yamato.jce.initPos"],Duration:20}
scoreboard players operation @e[type=area_effect_cloud,distance=..2,limit=1,sort=nearest,tag=yamato.jce.initPos] user.id = @s user.id

# initialize
scoreboard players set %yamato.jce.2 generic.constant 2
scoreboard players set @s generic.raycast.step 40

# run raycast
execute rotated ~ 0 positioned ~ ~1 ~ run function src:weapon/yamato/judgement_cut_end/dash/range/step

# reset
scoreboard players reset %yamato.jce.2
scoreboard players reset @s generic.raycast.step