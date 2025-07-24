## Summons and launches armor supply
summon armor_stand ~ ~ ~ {Pose:{Head:[0f,0f,0f]},Invisible:1b,Small:1b,DisabledSlots:4144959,Tags:["supply","supply.armor"],equipment:{chest:{id:leather_chestplate,components:{dyed_color:64768,unbreakable:{}}}}}
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=supply.armor] at @s run function src:supply/launch