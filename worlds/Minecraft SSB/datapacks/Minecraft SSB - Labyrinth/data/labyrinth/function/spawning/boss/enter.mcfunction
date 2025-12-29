$execute if entity @s[tag=!LabyrinthEnteredBoss] as @e[tag=labyrinth.$(bossName)] run function labyrinth:spawning/boss/scaling {"bossName":"$(bossName)"}
$execute if entity @s[tag=!LabyrinthEnteredBoss] if entity @e[tag=labyrinth.$(bossName)] run function labyrinth:mobs/bosses/$(bossName)/triggers/play_music
$execute if entity @s[tag=!LabyrinthEnteredBoss] unless entity @e[tag=labyrinth.$(bossName)] positioned $(posX) $(posY) $(posZ) run function labyrinth:mobs/bosses/$(bossName)/triggers/spawn
$execute if entity @e[type=item,predicate=labyrinth:generic/boss_defeat,predicate=labyrinth:zones/boss/$(bossName)] run function labyrinth:mobs/bosses/$(bossName)/triggers/death
$execute if entity @e[tag=labyrinth.$(bossName)] run function labyrinth:spawning/boss/music {"bossName":"$(bossName)","timeLimit":"$(musicTimeLimit)"}

tag @s[tag=!LabyrinthEnteredBoss] add LabyrinthEnteredBoss
