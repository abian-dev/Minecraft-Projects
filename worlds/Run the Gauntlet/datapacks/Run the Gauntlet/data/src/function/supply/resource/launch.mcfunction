## Summons and launches resource supply
function src:supply/resource/summon
scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest,tag=supply.resource] user.id = @s[type=player] user.id
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=supply.resource] at @s run function src:supply/launch