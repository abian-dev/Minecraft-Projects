## If user is facing an enemy
# teleports to enemy
function kits:generic/functions/random_pos/start180 {"itt":"1","yaw":"90","pitch":"0","distMin":"5","distMax":"10","atPos":"tp @p[tag=Gojo] ~ ~ ~ facing entity @s"}
scoreboard players set @s kits.raycastTick 0

# sfx
playsound entity.ghast.shoot neutral @a[distance=..20] ~ ~ ~ 0.5 1.5 0.5

# remove scores
scoreboard players remove @s kits.ability1CD 10
scoreboard players set @s kits.ability5CD 0