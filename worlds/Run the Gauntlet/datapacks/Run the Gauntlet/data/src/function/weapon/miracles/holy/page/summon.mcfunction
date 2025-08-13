## Summons and launches bible page
summon armor_stand ~ ~ ~ {Pose:{Head:[0f,0f,180f]},Invisible:1b,DisabledSlots:4144959,Tags:["miracles.holy.page"],equipment:{head:{id:filled_map}}}
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=miracles.holy.page] at @s run function src:weapon/miracles/holy/page/launch