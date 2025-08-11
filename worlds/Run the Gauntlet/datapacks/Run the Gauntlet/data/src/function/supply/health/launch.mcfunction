## Summons and launches health supply
function src:supply/health/summon
scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest,tag=supply.health] user.id = @s[type=player] user.id
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=supply.health] at @s run function src:supply/launch