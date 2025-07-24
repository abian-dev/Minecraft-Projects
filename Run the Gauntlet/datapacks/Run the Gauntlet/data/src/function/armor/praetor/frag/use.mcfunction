## When frag grenade is used
# throw
tag @s add praetor.frag.user
summon armor_stand ~ ~ ~ {Pose:{Head:[0f,0f,180f]},Invisible:1b,Small:1b,DisabledSlots:4144959,Tags:["praetor.frag"],equipment:{head:{id:player_head,components:{profile:{id:[I;-1047448480,1078151526,-1990117693,317329809],properties:[{name:textures,value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDBkMWZiMTdhMmQ1YzZlYzJjMmUyYzNjYTFmOTUxMTA5YmM2OTA2MzMyOTdjNmY5ZDkzODNhNDQ5ZjYwMzg5NiJ9fX0="}]}}}}}
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=praetor.frag] at @s run function src:armor/praetor/frag/init
playsound entity.ender_dragon.shoot neutral @a[distance=..20] ~ ~ ~ 2 0 1

scoreboard players add @s armor.cd2 100