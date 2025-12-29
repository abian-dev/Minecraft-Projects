function kits:char/hinako/dodge/perfectdodgeattackend
scoreboard players set @s kits.raycastTick2 0
execute at @s rotated ~ 0 run function kits:char/hinako/counter/raycast
schedule function kits:char/hinako/heavyattack/perfectdodgeattackdelay 3t replace
