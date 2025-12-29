schedule clear kits:char/saber/slash/end
attribute @p[tag=Saber] minecraft:attack_speed modifier remove attackspeed.slash.saber
tag @e[tag=SaberSlashDmg] remove SaberSlashDmg
kill @e[type=area_effect_cloud,tag=SaberSlash]