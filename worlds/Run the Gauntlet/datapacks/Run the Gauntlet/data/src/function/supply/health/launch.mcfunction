## Summons and launches health supply
summon armor_stand ~ ~ ~ {Pose:{Head:[0f,0f,0f]},Invisible:1b,Small:1b,DisabledSlots:4144959,Tags:["supply","supply.health"],equipment:{chest:{id:diamond_chestplate,unbreakable:{}}}}
scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest,tag=supply.health] user.id = @s[type=player] user.id
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=supply.health] at @s run function src:supply/launch