function kits:char/hinako/stamina/sanity {sanity: 40}
scoreboard players set @s kits.raycastTick2 0
execute at @s rotated ~ 0 run function kits:char/hinako/counter/raycast
schedule function kits:char/hinako/counter/attackdelay 3t replace
scoreboard players set @s kits.ability3CD 0