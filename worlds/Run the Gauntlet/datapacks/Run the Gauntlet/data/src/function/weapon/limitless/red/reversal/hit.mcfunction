## Hit by red function
damage @s 7 src:bypass_player_attack_no_kb by @p[tag=limitless.red.user]
scoreboard players set @s effect.stun.duration 2

# kb
scoreboard players set %limitless.red.kb generic.raycast.step 10
execute positioned ~ ~1 ~ facing entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=limitless.red] feet run function src:weapon/limitless/red/kb/step
scoreboard players reset %limitless.red.kb