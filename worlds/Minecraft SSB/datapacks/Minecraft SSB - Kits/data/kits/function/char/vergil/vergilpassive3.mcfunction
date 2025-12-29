scoreboard players add @s kits.raycastTick 1
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Vergil,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222..}] run summon area_effect_cloud ^ ^ ^1 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["judgementcutmiddle"]}
execute as @s[scores={kits.raycastTick=15}] run summon area_effect_cloud ^ ^ ^ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["judgementcutmiddle"]}

execute as @s[scores={kits.raycastTick=..14}] positioned ^ ^ ^0.5 run function kits:char/vergil/vergilpassive3
