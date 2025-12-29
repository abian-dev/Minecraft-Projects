scoreboard players add @s labyrinth.music 1
$execute if score @s labyrinth.music matches $(timeLimit) run function labyrinth:mobs/bosses/$(bossName)/triggers/play_music