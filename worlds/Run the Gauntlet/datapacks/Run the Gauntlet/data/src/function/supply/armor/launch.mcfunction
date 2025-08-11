## Summons and launches armor supply
function src:supply/armor/summon
scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest,tag=supply.armor] user.id = @s[type=player] user.id
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=supply.armor] at @s run function src:supply/launch