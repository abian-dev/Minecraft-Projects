# Play music
function labyrinth:mobs/bosses/cinder/triggers/play_music

# Trigger spawn
execute summon minecraft:piglin_brute run function labyrinth:mobs/bosses/cinder/summon_merge

# Bossbar
bossbar add labyrinth.bossbar.cinder "Soul of Cinder"
bossbar set minecraft:labyrinth.bossbar.cinder color red
bossbar set minecraft:labyrinth.bossbar.cinder visible true
execute store result bossbar minecraft:labyrinth.bossbar.cinder max run execute as @e[tag=labyrinth.cinder] run attribute @s minecraft:max_health get
