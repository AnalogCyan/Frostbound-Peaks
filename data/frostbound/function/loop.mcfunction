function frostbound:stray

# First-join welcome effects (per-player, multiplayer-safe)
scoreboard players add @a frostbound.welcomed 0
execute as @a[scores={frostbound.welcomed=0}] at @s run setblock ~ ~ ~ minecraft:powder_snow
execute as @a[scores={frostbound.welcomed=0}] run effect give @s minecraft:regeneration 10 1 true
execute as @a[scores={frostbound.welcomed=0}] run effect give @s minecraft:saturation 10 1 true
execute as @a[scores={frostbound.welcomed=0}] run effect give @s minecraft:darkness 10 0 true
execute as @a[scores={frostbound.welcomed=0}] run effect give @s minecraft:mining_fatigue 10 255 true
execute as @a[scores={frostbound.welcomed=0}] run title @s times 10 200 30
execute as @a[scores={frostbound.welcomed=0}] run title @s title {"text":"Frostbound Peaks","color":"#7AB8E8"}
execute as @a[scores={frostbound.welcomed=0}] run title @s subtitle {"text":"you awaken to a quiet apocalypse...","color":"#D0E8F8","italic":true}
execute as @a[scores={frostbound.welcomed=0}] run scoreboard players set @s frostbound.snow_timer 140
execute as @a[scores={frostbound.welcomed=0}] run scoreboard players set @s frostbound.welcomed 1

# Count down snow timer
scoreboard players remove @a[scores={frostbound.snow_timer=1..}] frostbound.snow_timer 1

# Remove powder snow when timer expires
execute as @a[scores={frostbound.snow_timer=0}] at @s if block ~ ~ ~ minecraft:powder_snow run setblock ~ ~ ~ minecraft:air
execute as @a[scores={frostbound.snow_timer=0}] run scoreboard players set @s frostbound.snow_timer -1
