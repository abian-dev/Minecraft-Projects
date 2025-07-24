## When ice bomb is used
# throw
tag @s add praetor.ice.user
summon armor_stand ~ ~ ~ {Pose:{Head:[0f,0f,180f]},Invisible:1b,Small:1b,DisabledSlots:4144959,Tags:["praetor.ice"],equipment:{head:{id:player_head,components:{profile:{id:[I;-103584334,-260813586,-1173507472,-1497543618],properties:[{name:textures,value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWRmZDc3MjRjNjlhMDI0ZGNmYzYwYjE2ZTAwMzM0YWI1NzM4ZjRhOTJiYWZiOGZiYzc2Y2YxNTMyMmVhMDI5MyJ9fX0="}]}}}}}
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=praetor.ice] at @s run function src:armor/praetor/ice/init
playsound entity.ender_dragon.shoot neutral @a[distance=..20] ~ ~ ~ 2 0 1

scoreboard players add @s armor.cd2 100