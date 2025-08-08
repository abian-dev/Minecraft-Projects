## Opens ritual
# tp to user
scoreboard players operation %miracles.soul.search user.id = @s user.id
execute as @a[tag=miracles.soul.user] at @s if score @s user.id = %miracles.soul.search user.id as @e[type=area_effect_cloud,tag=miracles.soul] if score @s user.id = %miracles.soul.search user.id run tp @s ~ ~ ~ ~ 0
execute as @a[tag=miracles.soul.user] at @s if score @s user.id = %miracles.soul.search user.id run function src:weapon/miracles/soul/launch/start
execute at @s as @e[type=area_effect_cloud,tag=miracles.soul.origin] if score @s user.id = %miracles.soul.search user.id run tp @s ~ ~ ~ ~ ~
scoreboard players reset %miracles.soul.search

# fx
execute at @s rotated ~ 90 run function src:generic/vfx/expanding_circle/play {"particle":"soul_fire_flame","speed":"0.0000005"}
execute at @s run function src:generic/vfx/expanding_cylinder/play {"accuracy":"50","speed":"100","limit":"5","height":"3000","particle":"flash"}
execute at @s run playsound block.beacon.power_select neutral @a[distance=..20] ~ ~ ~ 1 2 1
execute at @s run playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 1 0 1