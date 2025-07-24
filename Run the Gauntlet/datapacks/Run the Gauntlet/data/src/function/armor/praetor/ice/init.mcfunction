## Initialize summoned ice bomb
attribute @s scale base set 0.8
execute rotated as @p run tp @s ^1.0 ^1.5 ^ ~ ~
execute at @s run function src:generic/functions/launch {"sVert":"0.05","sHorz":"0.20"}