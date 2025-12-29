tag @s remove LabyrinthEnteredBoss
$function labyrinth:mobs/bosses/$(bossName)/triggers/stop_music
$bossbar set minecraft:labyrinth.bossbar.$(bossName) players @a[predicate=labyrinth:zones/boss/$(bossName)]
