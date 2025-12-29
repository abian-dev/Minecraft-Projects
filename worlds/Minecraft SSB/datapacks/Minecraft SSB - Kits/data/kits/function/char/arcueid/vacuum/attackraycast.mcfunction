scoreboard players add @s kits.raycastTick 1
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Arcueid,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Arcueid,tag=!InLabyrinth,limit=1,sort=nearest] at @s run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:20,Tags:["ArcueidVacuum"]}
execute as @s[scores={kits.raycastTick=..20}] positioned ^ ^ ^0.5 run function kits:char/arcueid/vacuum/attackraycast
