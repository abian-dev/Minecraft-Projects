## Summons afterimage
# summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["yamato.jce.image"],Duration:30}
summon armor_stand ~ ~ ~ {Pose:{LeftArm:[315f,0f,0f],RightArm:[45f,0f,0f],LeftLeg:[45f,0f,0f],RightLeg:[315f,0f,0f]},ShowArms:1b,NoBasePlate:1b,DisabledSlots:4144959,Tags:["yamato.jce.image"],equipment:{head:{id:wither_skeleton_skull},chest:{id:leather_chestplate,components:{dyed_color:0,unbreakable:{}}},legs:{id:netherite_leggings,components:{unbreakable:{}}},feet:{id:"leather_boots",components:{dyed_color:0,unbreakable:{}}}}}

# init orientation
execute if entity @e[type=armor_stand,distance=3..,limit=1,sort=nearest,tag=yamato.jce.image] run return run execute as @e[type=armor_stand,limit=1,sort=nearest,tag=yamato.jce.image] at @s facing entity @e[type=armor_stand,distance=3..,limit=1,sort=nearest,tag=yamato.jce.image] feet run tp @s ~ ~ ~ ~ ~
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=yamato.jce.image] at @s facing entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=yamato.jce] feet run tp @s ~ ~ ~ ~ ~