## Summons ammo supply
summon armor_stand ~ ~ ~ {Pose:{Head:[0f,0f,180f]},Invisible:1b,Small:1b,DisabledSlots:4144959,Tags:["supply","supply.ammo"]}
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=supply.ammo] at @s run function src:supply/ammo/init