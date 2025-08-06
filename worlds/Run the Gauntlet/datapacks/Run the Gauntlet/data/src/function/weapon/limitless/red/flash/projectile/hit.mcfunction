## Hit by red flash function
damage @s 0.5 src:bypass_player_attack by @p[tag=limitless.red.user]
scoreboard players set @s effect.stun.duration 2

# kb
scoreboard players set %limitless.red.kb generic.raycast.step 5
execute rotated as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=limitless.red.flash] rotated ~180 ~ run function src:weapon/limitless/red/kb/step
scoreboard players reset %limitless.red.kb