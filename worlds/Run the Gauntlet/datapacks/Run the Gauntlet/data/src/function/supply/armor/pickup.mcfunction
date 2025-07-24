## Armor pickup effects
playsound entity.zombie.attack_iron_door neutral @a[distance=..5] ~ ~ ~ 1 2 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{"minecraft:absorption":{amplifier:3}}}} run return run effect give @s absorption 5 4 true
execute if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{"minecraft:absorption":{amplifier:2}}}} run return run effect give @s absorption 5 3 true
execute if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{"minecraft:absorption":{amplifier:1}}}} run return run effect give @s absorption 5 2 true
execute if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{"minecraft:absorption":{amplifier:0}}}} run return run effect give @s absorption 5 1 true
effect give @s absorption 5 0 true