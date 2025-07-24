## When supply is near player
execute if entity @s[tag=supply.armor] as @p run function src:supply/armor/pickup
execute if entity @s[tag=supply.health] as @p run function src:supply/health/pickup
kill @s