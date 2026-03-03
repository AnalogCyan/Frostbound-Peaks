execute as @e[type=minecraft:skeleton] at @s run summon minecraft:stray ~ ~ ~
execute as @e[type=minecraft:skeleton] run data merge entity @s {DeathLootTable:"minecraft:empty",drop_chances:{}}
kill @e[type=minecraft:skeleton]
