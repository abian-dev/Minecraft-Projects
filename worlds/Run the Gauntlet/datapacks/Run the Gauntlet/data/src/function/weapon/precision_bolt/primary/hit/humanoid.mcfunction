## Hit humanoid function
# track body part hits
execute positioned ~ ~-1.7 ~ if entity @s[distance=..0.35] positioned ~ ~1.5 ~ run return run function src:weapon/precision_bolt/primary/hit/head
execute positioned ~ ~-1.05 ~ if entity @s[distance=..0.45] positioned ~ ~1 ~ run return run function src:weapon/precision_bolt/primary/hit/body
execute positioned ~ ~-0.45 ~ if entity @s[distance=..0.4] positioned ~ ~0.5 ~ run return run function src:weapon/precision_bolt/primary/hit/legs

# default to body if nothing detected
function src:weapon/precision_bolt/primary/hit/body