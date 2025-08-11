## Summons and launches ammo
function src:supply/ammo/summon
scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest,tag=supply.ammo] user.id = @s[type=player] user.id
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=supply.ammo] at @s run function src:supply/launch