scoreboard players set @s kits.raycastTick 0
execute at @s rotated ~ 0 positioned ~ ~ ~ run function kits:char/saber/slash/raycast

function kits:char/saber/slash/end
schedule function kits:char/saber/slash/end 8t replace
attribute @s minecraft:attack_speed modifier add attackspeed.slash.saber -50 add_value
execute at @s run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:8,Tags:["SaberSlash","SaberSlash1"]}
execute at @s rotated ~ 0 run tp @e[type=area_effect_cloud,tag=SaberSlash] ^ ^ ^1 facing ^3 ^ ^

execute at @s run playsound minecraft:entity.player.attack.knockback neutral @a[distance=..20] ~ ~ ~ 3 0 1

scoreboard players add @s kits.timer 1
scoreboard players set @s kits.timer2 0
scoreboard players set @s kits.ability1CD 0
