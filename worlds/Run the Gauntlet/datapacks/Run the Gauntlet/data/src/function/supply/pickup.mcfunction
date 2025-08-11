## When supply is near player
execute if entity @s[tag=supply.ammo] run function src:supply/ammo/pickup/main
execute if entity @s[tag=supply.armor] as @p run function src:supply/armor/pickup
execute if entity @s[tag=supply.health] as @p run function src:supply/health/pickup

# reset
scoreboard players reset %supply.search
tag @a[tag=supply.pickupLocked] remove supply.pickupLocked
kill @s