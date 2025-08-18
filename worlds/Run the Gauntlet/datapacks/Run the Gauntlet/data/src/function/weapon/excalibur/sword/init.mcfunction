## Initialize summoned excalibur sword
execute rotated as @p[tag=excalibur.sword.user] rotated ~ 0 run tp @s ^ ^1 ^1 ~ -90
scoreboard players operation @s user.id = @p[tag=excalibur.sword.user] user.id

# summon light radiance
function src:weapon/excalibur/sword/light/summon_aura
scoreboard players operation @e[type=area_effect_cloud,limit=1,sort=nearest,tag=excalibur.sword.light.aura] user.id = @s user.id