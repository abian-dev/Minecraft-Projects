tag @s add ArcueidChained
effect give @s minecraft:weakness 1 9 true
playsound minecraft:block.chain.break neutral @a[distance=..40] ~ ~ ~ 10 0 1
playsound minecraft:entity.breeze.shoot neutral @a[distance=..30] ~ ~ ~ 3 0 1
summon area_effect_cloud ~ ~1 ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["ArcueidChains"]}
scoreboard players set @p[tag=Arcueid] kits.ability4CD 0

execute rotated ~-180 -25 run summon area_effect_cloud ^ ^ ^15 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["ArcueidChainsDecoration"]}
execute rotated ~-155 -10 run summon area_effect_cloud ^ ^ ^15 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["ArcueidChainsDecoration"]}
execute rotated ~-130 -40 run summon area_effect_cloud ^ ^ ^15 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["ArcueidChainsDecoration"]}
execute rotated ~-105 5 run summon area_effect_cloud ^ ^ ^15 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["ArcueidChainsDecoration"]}
execute rotated ~-80 -30 run summon area_effect_cloud ^ ^ ^15 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["ArcueidChainsDecoration"]}

execute rotated ~-55 15 run summon area_effect_cloud ^ ^ ^15 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["ArcueidChainsDecoration"]}
execute rotated ~-30 -18 run summon area_effect_cloud ^ ^ ^15 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["ArcueidChainsDecoration"]}
execute rotated ~-5 -50 run summon area_effect_cloud ^ ^ ^15 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["ArcueidChainsDecoration"]}
execute rotated ~20 8 run summon area_effect_cloud ^ ^ ^15 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["ArcueidChainsDecoration"]}
execute rotated ~45 -22 run summon area_effect_cloud ^ ^ ^15 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["ArcueidChainsDecoration"]}

execute rotated ~70 20 run summon area_effect_cloud ^ ^ ^15 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["ArcueidChainsDecoration"]}
execute rotated ~95 -12 run summon area_effect_cloud ^ ^ ^15 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["ArcueidChainsDecoration"]}
execute rotated ~120 -35 run summon area_effect_cloud ^ ^ ^15 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["ArcueidChainsDecoration"]}
execute rotated ~145 10 run summon area_effect_cloud ^ ^ ^15 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["ArcueidChainsDecoration"]}
execute rotated ~170 -28 run summon area_effect_cloud ^ ^ ^15 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["ArcueidChainsDecoration"]}
