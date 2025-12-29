scoreboard players set @s kits.raycastTick 0
execute at @s rotated ~ 0 positioned ~ ~ ~ run function kits:char/saber/slash/raycast

function kits:char/saber/slash/end
attribute @s minecraft:attack_speed modifier add attackspeed.slash.saber -50 add_value
execute at @s run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:20,Tags:["SaberSlash","SaberSlash3"]}
tp @e[type=area_effect_cloud,tag=SaberSlash] @s
execute as @e[type=area_effect_cloud,tag=SaberSlash] at @s rotated ~ 0 run tp @s ^ ^0.75 ^1 ~180 0
execute at @s run playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 3 0 1

scoreboard players add @s kits.timer 1
scoreboard players set @s kits.timer2 0
scoreboard players set @s[scores={kits.timer=3..}] kits.timer 0
