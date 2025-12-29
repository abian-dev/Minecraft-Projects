scoreboard players set @s[tag=!SaberStrikeAirCharge] kits.criterion.shiftOn 0
attribute @s[tag=!SaberStrikeAirCharge] minecraft:attack_speed modifier add attackspeed.strikeair.saber -50 add_value
execute if entity @s[tag=!SaberStrikeAirCharge] run playsound minecraft:block.trial_spawner.close_shutter neutral @a[distance=..30] ~ ~ ~ 3 1.5 1
tag @s[tag=!SaberStrikeAirCharge] add SaberStrikeAirCharge
