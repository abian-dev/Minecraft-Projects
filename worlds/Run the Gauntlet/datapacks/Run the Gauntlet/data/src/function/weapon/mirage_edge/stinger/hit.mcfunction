## Hit by stinger function
damage @s 5 src:bypass_player_attack by @p[tag=mirageedge.stinger.user]
scoreboard players set @s effect.stun.duration 2
function src:assign_tasks/schedule/to_entities

# fx
execute rotated as @p[tag=mirageedge.stinger.user] positioned ~ ~1 ~ run function src:generic/vfx/expanding_circle/play {"particle":"soul_fire_flame","speed":"0.00000015"}
playsound entity.zombie.attack_iron_door neutral @a[distance=..20] ~ ~ ~ 1 0 1